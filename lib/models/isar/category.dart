import 'package:client/models/isar/task.dart';
import 'package:isar/isar.dart';

part 'category.g.dart';

@collection
class IsarCategory {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String name;

  late int color;

  late bool dirty;

  late DateTime updateAt;

  DateTime? deleteAt;

  @Backlink(to: 'category')
  final tasks = IsarLinks<IsarTask>();
}
