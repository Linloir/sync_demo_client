import 'package:client/models/isar/category.dart';
import 'package:client/models/isar/tag.dart';
import 'package:client/models/isar/task.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarProvider {
  static final IsarProvider _singleton = IsarProvider._internal();

  IsarProvider._internal();

  final Future<Isar> isar = Future(() async {
    final dir = await getApplicationDocumentsDirectory();
    return await Isar.open(
      [
        TagSchema,
        CategorySchema,
        TaskSchema,
      ],
      directory: dir.path
    );
  });

  static Future<Isar> get instance {
    return _singleton.isar;
  }
}
