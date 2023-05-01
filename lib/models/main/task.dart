import 'package:client/models/main/category.dart';
import 'package:client/models/main/tag.dart';

class Task {
  Task({
    required this.uuid,
    required this.title,
    required this.status,
    required this.dirty,
    required this.updateAt,
    required this.deleteAt,
    required this.category,
    required this.tags,
  });

  String uuid;
  String title;
  bool status;
  bool dirty;
  DateTime updateAt;
  DateTime? deleteAt;
  Category? category;
  Set<Tag> tags;
}
