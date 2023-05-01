import 'package:client/models/isar/category.dart';
import 'package:client/models/isar/tag.dart';
import 'package:client/models/isar/task.dart';
import 'package:client/models/main/category.dart';
import 'package:client/models/main/tag.dart';
import 'package:client/models/main/task.dart';
import 'package:client/repository/local_repository.dart';
import 'package:client/repository/server_repository.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageRepository {
  StorageRepository() {
    push();
  }

  final LocalRepository _localRepository = LocalRepository();
  final ServerRepository _serverRepository = ServerRepository();

  Stream<List<Task>> get tasks async* {
    await for (final data in _localRepository.tasks) {
      yield data.map((task) => Task(
        uuid: task.uuid,
        title: task.title,
        status: task.status,
        dirty: task.dirty,
        updateAt: task.updateAt,
        deleteAt: task.deleteAt,
        category: task.category.value == null ? null : Category(
          name: task.category.value!.name,
          color: task.category.value!.color,
          dirty: task.category.value!.dirty,
          updateAt: task.category.value!.updateAt,
          deleteAt: task.category.value!.deleteAt,
        ),
        tags: task.tags.map((tag) => Tag(
          name: tag.name,
          color: tag.color,
          dirty: tag.dirty,
          updateAt: tag.updateAt,
          deleteAt: tag.deleteAt,
        )).toSet(),
      )).toList();
    }
  }
  Stream<List<Tag>> get tags async* {
    await for (final data in _localRepository.tags) {
      yield data.map((tag) => Tag(
        name: tag.name,
        color: tag.color,
        dirty: tag.dirty,
        updateAt: tag.updateAt,
        deleteAt: tag.deleteAt,
      )).toList();
    }
  }
  Stream<List<Category>> get categories async* {
    await for (final data in _localRepository.categories) {
      yield data.map((category) => Category(
        name: category.name,
        color: category.color,
        dirty: category.dirty,
        updateAt: category.updateAt,
        deleteAt: category.deleteAt,
      )).toList();
    }
  }

  Future<void> putTask(Task task) async {
    final isarTags = task.tags.map((tag) {
      return IsarTag()
        ..name = tag.name
        ..color = tag.color
        ..dirty = tag.dirty
        ..updateAt = tag.updateAt
        ..deleteAt = tag.deleteAt;
    }).toList();
    final isarCategory = IsarCategory()
      ..name = task.category!.name
      ..color = task.category!.color
      ..dirty = task.category!.dirty
      ..updateAt = task.category!.updateAt
      ..deleteAt = task.category!.deleteAt;
    
    final storedTags = await Future.wait(isarTags.map((e) => _localRepository.putTag(e)));
    final storedCategory = await _localRepository.putCategory(isarCategory);

    final isarTask = IsarTask()
      ..uuid = task.uuid
      ..title = task.title
      ..status = task.status
      ..dirty = task.dirty
      ..updateAt = task.updateAt
      ..deleteAt = task.deleteAt
      ..category.value = storedCategory
      ..tags.addAll(storedTags);
    await _localRepository.putTask(isarTask);
    await _serverRepository.push(task);
    await _localRepository.putTask(isarTask..dirty = false);
    EasyDebounce.debounce(
      'fetch',
      const Duration(seconds: 1),
      fetch,
    );
  }

  Future<void> putTag(Tag tag) async {
    final isarTag = IsarTag()
      ..name = tag.name
      ..color = tag.color
      ..dirty = tag.dirty
      ..updateAt = tag.updateAt
      ..deleteAt = tag.deleteAt;

    await _localRepository.putTag(isarTag);
    await _serverRepository.push(tag);
    await _localRepository.putTag(isarTag..dirty = false);
    EasyDebounce.debounce(
      'fetch',
      const Duration(seconds: 1),
      fetch,
    );
  }

  Future<void> putCategory(Category category) async {
    final isarCategory = IsarCategory()
      ..name = category.name
      ..color = category.color
      ..dirty = category.dirty
      ..updateAt = category.updateAt
      ..deleteAt = category.deleteAt;

    await _localRepository.putCategory(isarCategory);
    await _serverRepository.push(category);
    await _localRepository.putCategory(isarCategory..dirty = false);
    EasyDebounce.debounce(
      'fetch',
      const Duration(seconds: 1),
      fetch,
    );
  }

  Future<void> push() async {
    final dirtyData = await _localRepository.dirtyData;
    await Future.wait(dirtyData.map((data) async {
      await _serverRepository.push(data);
      switch (data.runtimeType) {
        case IsarTask:
          await _localRepository.putTask(data..dirty = false);
          break;
        case IsarCategory:
          await _localRepository.putCategory(data..dirty = false);
          break;
        case IsarTag:
          await _localRepository.putTag(data..dirty = false);
          break;
      }
    }));
    EasyDebounce.debounce(
      'fetch',
      const Duration(seconds: 1),
      fetch,
    );
  }

  Future<void> fetch() async {
    final currentTimestamp = DateTime.now().millisecondsSinceEpoch;
    final pref = await SharedPreferences.getInstance();
    final lastFetchAt = pref.getInt('lastFetchAt');
    final fetchedData = await _serverRepository.fetch(
      lastFetchAt != null
        ? DateTime.fromMillisecondsSinceEpoch(lastFetchAt)
        : null,
    );
    for (final data in fetchedData) {
      switch (data.runtimeType) {
        case Task:
          data as Task;
          final isarTags = data.tags.map((tag) {
            return IsarTag()
              ..name = tag.name
              ..color = tag.color
              ..dirty = tag.dirty
              ..updateAt = tag.updateAt
              ..deleteAt = tag.deleteAt;
          }).toList();
          final isarCategory = IsarCategory()
            ..name = data.category!.name
            ..color = data.category!.color
            ..dirty = data.category!.dirty
            ..updateAt = data.category!.updateAt
            ..deleteAt = data.category!.deleteAt;
          
          final storedTags = await Future.wait(isarTags.map((e) => _localRepository.putTag(e)));
          final storedCategory = await _localRepository.putCategory(isarCategory);

          final isarTask = IsarTask()
            ..uuid = data.uuid
            ..title = data.title
            ..status = data.status
            ..dirty = data.dirty
            ..updateAt = data.updateAt
            ..deleteAt = data.deleteAt
            ..category.value = storedCategory
            ..tags.addAll(storedTags);
          await _localRepository.putTask(isarTask);
          break;
        case Category:
          data as Category;
          final isarCategory = IsarCategory()
            ..name = data.name
            ..color = data.color
            ..dirty = data.dirty
            ..updateAt = data.updateAt
            ..deleteAt = data.deleteAt;
          await _localRepository.putCategory(isarCategory);
          break;
        case Tag:
          data as Tag;
          final isarTag = IsarTag()
            ..name = data.name
            ..color = data.color
            ..dirty = data.dirty
            ..updateAt = data.updateAt
            ..deleteAt = data.deleteAt;
          await _localRepository.putTag(isarTag);
          break;
      }
    }
    await pref.setInt('lastFetchAt', currentTimestamp);
    EasyDebounce.debounce(
      'fetch',
      const Duration(seconds: 1),
      fetch,
    );
  }
}
