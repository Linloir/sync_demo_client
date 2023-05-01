part of 'task_add_cubit.dart';

class TaskAddState extends Equatable {
  const TaskAddState({
    this.taskTitle = '',
    this.tags = const [],
    this.category,
    this.allTags = const [],
    this.allCategories = const [],
  });

  final String taskTitle;

  final List<Tag> tags;
  final Category? category;

  final List<Tag> allTags;
  final List<Category> allCategories;

  TaskAddState copyWith({
    String? taskTitle,
    List<Tag>? tags,
    Category? category,
    List<Tag>? allTags,
    List<Category>? allCategories,
  }) {
    return TaskAddState(
      taskTitle: taskTitle ?? this.taskTitle,
      tags: tags ?? this.tags,
      category: category ?? this.category,
      allTags: allTags ?? this.allTags,
      allCategories: allCategories ?? this.allCategories,
    );
  }

  @override
  List<Object?> get props => [
    taskTitle,
    tags,
    category,
    allTags,
    allCategories,
  ];
}
