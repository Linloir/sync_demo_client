import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:client/models/grpc/generated/category.pbgrpc.dart';
import 'package:client/models/grpc/generated/tag.pbgrpc.dart';
import 'package:client/models/grpc/generated/task.pbgrpc.dart';
import 'package:client/models/main/category.dart';
import 'package:client/models/main/tag.dart';
import 'package:client/models/main/task.dart';
import 'package:client/utils/config.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:retry/retry.dart';
import 'package:synchronized/synchronized.dart';

class ConnectionException implements Exception {}
class UnknwonException implements Exception {}

class _PushData {
  _PushData({
    required this.completer,
    required this.data,
  });

  final Completer<void> completer;
  final dynamic data;
}

class ServerRepository {
  ServerRepository() {
    Future(() async {
      await for (final data in _pushStreamController.stream) {
        // check connectivity
        final connectivity = await Connectivity().checkConnectivity();
        if (connectivity == ConnectivityResult.none) {
          await Connectivity().onConnectivityChanged.firstWhere((event) => event != ConnectivityResult.none);
        }
        // push data
        await _push(data);
      }
    });
  }

  final StreamController _pushStreamController = StreamController<_PushData>();

  final syncLock = Lock();

  Future<void> push(dynamic data) {
    log('requested push');
    final completer = Completer<void>();
    _pushStreamController.add(_PushData(completer: completer, data: data));
    return completer.future;
  }

  Future<void> _push(_PushData data) async {
    syncLock.synchronized(() async {
      log('pushing some data');
      const retryOptions = RetryOptions(maxAttempts: 3);
      final channel = ClientChannel(
        Config.serverConfig.host,
        port: Config.serverConfig.port,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );
      try {
        await retryOptions.retry(
          () async {
            switch (data.data.runtimeType) {
              case Task:
                await _pushTask(data.data, channel);
                break;
              case Tag:
                await _pushTag(data.data, channel);
                break;
              case Category:
                await _pushCategory(data.data, channel);
                break;
              default:
                break;
            }
          },
          retryIf: (e) {
            if (e is GrpcError) {
              return e.code == StatusCode.deadlineExceeded || e.code == StatusCode.unavailable;
            }
            else {
              return e is TimeoutException || e is SocketException;
            }
          }
        );

        data.completer.complete();
      } catch (e) {
        log('push failed: $e, will retry later...');
        _pushStreamController.add(data);
      }
    });
  }
  
  Future<List<dynamic>> fetch(DateTime? lastFetch) async {
    return syncLock.synchronized(() async {
      log('requested fetch');
      const retryOptions = RetryOptions(maxAttempts: 3);
      final channel = ClientChannel(
        Config.serverConfig.host,
        port: Config.serverConfig.port,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );
      try {
        return await retryOptions.retry(
          () async {
            final tasks = await _fetchTask(lastFetch, channel);
            final tags = await _fetchTag(lastFetch, channel);
            final categories = await _fetchCategory(lastFetch, channel);
            return [...tasks, ...tags, ...categories];
          },
          retryIf: (e) {
            if (e is GrpcError) {
              return e.code == StatusCode.deadlineExceeded || e.code == StatusCode.unavailable;
            }
            else {
              return e is TimeoutException || e is SocketException;
            }
          }
        );
      } catch (e) {
        if (e is GrpcError) {
          if (e.code == StatusCode.deadlineExceeded || e.code == StatusCode.unavailable) {
            throw ConnectionException();
          }
          else {
            throw UnknwonException();
          }
        }
        else {
          if (e is TimeoutException || e is SocketException) {
            throw ConnectionException();
          }
          else {
            throw UnknwonException();
          }
        }
      }
    });
  }

  Future<void> _pushTask(Task task, ClientChannel channel) async {
    final stub = TaskServiceClient(channel);
    const retryOption = RetryOptions(maxAttempts: 3);
    await retryOption.retry(
      () async {
        log('push task: ${task.uuid}');
        await stub.putTask(PutTaskRequest(
          uuid: task.uuid,
          title: task.title,
          status: task.status,
          category: NestedCategory(
            name: task.category!.name,
            color: task.category!.color,
            updateAt: Int64(task.category!.updateAt.millisecondsSinceEpoch),
            deleteAt: task.category!.deleteAt != null
              ? Int64(task.category!.deleteAt!.millisecondsSinceEpoch)
              : null,
          ),
          tags: task.tags.map((tag) => NestedTag(
            name: tag.name,
            color: tag.color,
            updateAt: Int64(tag.updateAt.millisecondsSinceEpoch),
            deleteAt: tag.deleteAt != null
              ? Int64(tag.deleteAt!.millisecondsSinceEpoch)
              : null,
          )),
          updateAt: Int64(task.updateAt.millisecondsSinceEpoch),
          deleteAt: task.deleteAt != null
            ? Int64(task.deleteAt!.millisecondsSinceEpoch)
            : null,
        ));
        log('push task: ${task.uuid} done');
      },
      retryIf: (e) {
        if (e is GrpcError) {
          return e.code == StatusCode.deadlineExceeded || e.code == StatusCode.unavailable;
        }
        else {
          return e is TimeoutException || e is SocketException;
        }
      },
      onRetry: (p0) {
        log('push task ${task.uuid} failed: ${p0.toString()}, retrying...');
      },
    );
  }

  Future<void> _pushTag(Tag tag, ClientChannel channel) async {
    final stub = TagServiceClient(channel);
    const retryOption = RetryOptions(maxAttempts: 3);
    await retryOption.retry(
      () async {
        log('push tag: ${tag.name}');
        await stub.putTag(PutTagRequest(
          name: tag.name,
          color: tag.color,
          updateAt: Int64(tag.updateAt.millisecondsSinceEpoch),
          deleteAt: tag.deleteAt != null
            ? Int64(tag.deleteAt!.millisecondsSinceEpoch)
            : null,
        ));
        log('push tag: ${tag.name} done');
      },
      retryIf: (e) {
        if (e is GrpcError) {
          return e.code == StatusCode.deadlineExceeded || e.code == StatusCode.unavailable;
        }
        else {
          return e is TimeoutException || e is SocketException;
        }
      },
      onRetry: (p0) {
        log('push tag ${tag.name} failed: ${p0.toString()}, retrying...');
      },
    );
  }

  Future<void> _pushCategory(Category category, ClientChannel channel) async {
    final stub = CategoryServiceClient(channel);
    const retryOption = RetryOptions(maxAttempts: 3);
    await retryOption.retry(
      () async {
        log('push category: ${category.name}');
        await stub.putCategory(PutCategoryRequest(
          name: category.name,
          color: category.color,
          updateAt: Int64(category.updateAt.millisecondsSinceEpoch),
          deleteAt: category.deleteAt != null
            ? Int64(category.deleteAt!.millisecondsSinceEpoch)
            : null,
        ));
        log('push category: ${category.name} done');
      },
      retryIf: (e) {
        if (e is GrpcError) {
          return e.code == StatusCode.deadlineExceeded || e.code == StatusCode.unavailable;
        }
        else {
          return e is TimeoutException || e is SocketException;
        }
      },
      onRetry: (p0) {
        log('push category ${category.name} failed: ${p0.toString()}, retrying...');
      },
    );
  }

  Future<List<Task>> _fetchTask(DateTime? lastFetch, ClientChannel channel) async {
    log('fetching task');
    final stub = TaskServiceClient(channel);
    const retryOption = RetryOptions(maxAttempts: 3);
    final taskResponse = await retryOption.retry(
      () async {
        return stub.fetchTask(FetchTaskRequest(
          lastFetchAt: lastFetch != null
            ? Int64(lastFetch.millisecondsSinceEpoch)
            : null,
        ));
      },
      retryIf: (e) {
        if (e is GrpcError) {
          return e.code == StatusCode.deadlineExceeded || e.code == StatusCode.unavailable;
        }
        else {
          return e is TimeoutException || e is SocketException;
        }
      },
      onRetry: (p0) {
        log('fetch task failed: ${p0.toString()}, retrying...');
      },
    );
    log('fetching task done');
    return taskResponse.tasks.map((task) {
      final category = Category(
        name: task.category.name,
        color: task.category.color,
        dirty: false,
        updateAt: DateTime.fromMillisecondsSinceEpoch(task.category.updateAt.toInt()),
        deleteAt: task.category.hasDeleteAt()
          ? DateTime.fromMillisecondsSinceEpoch(task.category.deleteAt.toInt())
          : null,
      );
      final tags = task.tags.map((tag) {
        return Tag(
          name: tag.name,
          color: tag.color,
          dirty: false,
          updateAt: DateTime.fromMillisecondsSinceEpoch(tag.updateAt.toInt()),
          deleteAt: tag.hasDeleteAt()
            ? DateTime.fromMillisecondsSinceEpoch(tag.deleteAt.toInt())
            : null,
        );
      }).toSet();
      return Task(
        uuid: task.uuid,
        title: task.title,
        status: task.status,
        category: category,
        tags: tags,
        dirty: false,
        updateAt: DateTime.fromMillisecondsSinceEpoch(task.updateAt.toInt()),
        deleteAt: task.hasDeleteAt()
          ? DateTime.fromMillisecondsSinceEpoch(task.deleteAt.toInt())
          : null,
      );
    }).toList();
  }

  Future<List<Tag>> _fetchTag(DateTime? lastFetch, ClientChannel channel) async {
    log('fetching tag');
    final stub = TagServiceClient(channel);
    const retryOption = RetryOptions(maxAttempts: 3);
    final tagResponse = await retryOption.retry(
      () async {
        return stub.fetchTag(FetchTagRequest(
          lastFetchAt: lastFetch != null
            ? Int64(lastFetch.millisecondsSinceEpoch)
            : null,
        ));
      },
      retryIf: (e) {
        if (e is GrpcError) {
          return e.code == StatusCode.deadlineExceeded || e.code == StatusCode.unavailable;
        }
        else {
          return e is TimeoutException || e is SocketException;
        }
      },
      onRetry: (p0) {
        log('fetch tag failed: ${p0.toString()}, retrying...');
      },
    );
    log('fetching tag done');
    return tagResponse.tags.map((tag) {
      return Tag(
        name: tag.name,
        color: tag.color,
        dirty: false,
        updateAt: DateTime.fromMillisecondsSinceEpoch(tag.updateAt.toInt()),
        deleteAt: tag.hasDeleteAt()
          ? DateTime.fromMillisecondsSinceEpoch(tag.deleteAt.toInt())
          : null,
      );
    }).toList();
  }

  Future<List<Category>> _fetchCategory(DateTime? lastFetch, ClientChannel channel) async {
    log('fetching category');
    final stub = CategoryServiceClient(channel);
    const retryOption = RetryOptions(maxAttempts: 3);
    final categoryResponse = await retryOption.retry(
      () async {
        return stub.fetchCategory(FetchCategoryRequest(
          lastFetchAt: lastFetch != null
            ? Int64(lastFetch.millisecondsSinceEpoch)
            : null,
        ));
      },
      retryIf: (e) {
        if (e is GrpcError) {
          return e.code == StatusCode.deadlineExceeded || e.code == StatusCode.unavailable;
        }
        else {
          return e is TimeoutException || e is SocketException;
        }
      },
      onRetry: (p0) {
        log('fetch category failed: ${p0.toString()}, retrying...');
      },
    );
    log('fetching category done');
    return categoryResponse.categories.map((category) {
      return Category(
        name: category.name,
        color: category.color,
        dirty: false,
        updateAt: DateTime.fromMillisecondsSinceEpoch(category.updateAt.toInt()),
        deleteAt: category.hasDeleteAt()
          ? DateTime.fromMillisecondsSinceEpoch(category.deleteAt.toInt())
          : null,
      );
    }).toList();
  }
}
