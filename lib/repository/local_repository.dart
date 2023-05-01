import 'package:client/models/isar/category.dart';
import 'package:client/models/isar/tag.dart';
import 'package:client/models/isar/task.dart';
import 'package:client/utils/prisma_provider.dart';
import 'package:isar/isar.dart';

class LocalRepository {
  Future<IsarTag> putTag(IsarTag tag) async {
    final isar = await IsarProvider.instance;
    final curVersion = await isar.tags.where().nameEqualTo(tag.name).findFirst();
    if (curVersion != null && curVersion.updateAt.isAfter(tag.updateAt)) {
      return curVersion;
    }
    await isar.writeTxn(() async {
      await isar.tags.putByName(tag);
    });
    return tag;
  }

  Future<IsarCategory> putCategory(IsarCategory category) async {
    final isar = await IsarProvider.instance;
    final curVersion = await isar.categorys.where().nameEqualTo(category.name).findFirst();
    if (curVersion != null && curVersion.updateAt.isAfter(category.updateAt)) {
      return curVersion;
    }
    await isar.writeTxn(() async {
      await isar.categorys.putByName(category);
    });
    return category;
  }

  Future<IsarTask> putTask(IsarTask task) async {
    final isar = await IsarProvider.instance;
    final curVersion = await isar.tasks.where().uuidEqualTo(task.uuid).findFirst();
    if (curVersion != null && curVersion.updateAt.isAfter(task.updateAt)) {
      await curVersion.category.load();
      await curVersion.tags.load();
      return curVersion;
    }
    await isar.writeTxn(() async {
      await isar.tasks.putByUuid(task);
      await task.category.save();
      await task.tags.save();
    });
    return task;
  }

  Stream<List<IsarTag>> get tags async* {
    final isar = await IsarProvider.instance;
    final tags = await isar.tags.filter().deleteAtIsNull().findAll();
    yield tags;
    await for (final _ in isar.tags.watchLazy()) {
      final tags = await isar.tags.filter().deleteAtIsNull().findAll();
      yield tags;
    }
  }

  Stream<List<IsarCategory>> get categories async* {
    final isar = await IsarProvider.instance;
    final categorys = await isar.categorys.filter().deleteAtIsNull().findAll();
    yield categorys;
    await for (final _ in isar.categorys.watchLazy()) {
      final categorys = await isar.categorys.filter().deleteAtIsNull().findAll();
      yield categorys;
    }
  }

  Stream<List<IsarTask>> get tasks async* {
    final isar = await IsarProvider.instance;
    final tasks = await isar.tasks.filter().deleteAtIsNull().findAll();
    await Future.wait(tasks.map((task) async {
      await task.category.load();
      await task.tags.load();
    }));
    yield tasks;
    await for (final _ in isar.tasks.watchLazy()) {
      final tasks = await isar.tasks.filter().deleteAtIsNull().findAll();
      await Future.wait(tasks.map((task) async {
        await task.category.load();
        await task.tags.load();
      }));
      yield tasks;
    }
  }

  Future<List<IsarTag>> get dirtyTags async {
    final isar = await IsarProvider.instance;
    final tags = await isar.tags.filter().dirtyEqualTo(true).findAll();
    return tags;
  }

  Future<List<IsarCategory>> get dirtyCategories async {
    final isar = await IsarProvider.instance;
    final categorys = await isar.categorys.filter().dirtyEqualTo(true).findAll();
    return categorys;
  }

  Future<List<IsarTask>> get dirtyTasks async {
    final isar = await IsarProvider.instance;
    final tasks = await isar.tasks.filter().dirtyEqualTo(true).findAll();
    return tasks;
  }

  Future<List<dynamic>> get dirtyData async {
    final isar = await IsarProvider.instance;
    final tags = await isar.tags.filter().dirtyEqualTo(true).findAll();
    final categorys = await isar.categorys.filter().dirtyEqualTo(true).findAll();
    final tasks = await isar.tasks.filter().dirtyEqualTo(true).findAll();
    return [...tags, ...categorys, ...tasks];
  }
}
