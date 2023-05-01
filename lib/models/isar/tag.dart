import 'package:client/models/isar/task.dart';
import 'package:isar/isar.dart';

part 'tag.g.dart';

@collection
class IsarTag {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String name;

  late int color;

  late bool dirty;

  late DateTime updateAt;

  DateTime? deleteAt;

  @Backlink(to: 'tags')
  final tasks = IsarLinks<IsarTask>();
}
