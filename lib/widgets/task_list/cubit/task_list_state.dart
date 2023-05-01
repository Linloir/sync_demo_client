part of 'task_list_cubit.dart';

class TaskListState extends Equatable {
  const TaskListState({
    this.tasks = const [],
  });

  final List<Task> tasks;

  TaskListState copyWith({
    List<Task>? tasks,
  }) {
    return TaskListState(
      tasks: tasks ?? this.tasks,
    );
  }

  @override
  List<Object> get props => [tasks];
}
