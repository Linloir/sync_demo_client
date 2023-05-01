import 'package:client/models/isar/category.dart';
import 'package:client/models/isar/tag.dart';
import 'package:isar/isar.dart';

part 'task.g.dart';

@collection
class IsarTask {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String uuid;

  late String title;

  late bool status;

  late bool dirty;

  late DateTime updateAt;

  DateTime? deleteAt;

  final category = IsarLink<IsarCategory>();

  final tags = IsarLinks<IsarTag>();
}
