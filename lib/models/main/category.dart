class Category {
  Category({
    required this.name,
    required this.color,
    required this.dirty,
    required this.updateAt,
    required this.deleteAt,
  });

  String name;
  int color;
  bool dirty;
  DateTime updateAt;
  DateTime? deleteAt;
}

