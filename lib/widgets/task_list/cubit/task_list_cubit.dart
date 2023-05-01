import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/models/main/task.dart';
import 'package:client/repository/storage_repository.dart';
import 'package:equatable/equatable.dart';

part 'task_list_state.dart';

class TaskListCubit extends Cubit<TaskListState> {
  TaskListCubit({
    required StorageRepository storageRepository,
  }): _storageRepository = storageRepository,
      super(const TaskListState())
  {
    _taskSubscription = _storageRepository.tasks.listen((tasks) {
      emit(state.copyWith(
        tasks: tasks,
      ));
    });
  }

  final StorageRepository _storageRepository;
  late final StreamSubscription _taskSubscription;

  void updateTask(Task task) {
    _storageRepository.putTask(task);
  }

  @override
  Future<void> close() {
    _taskSubscription.cancel();
    return super.close();
  }
}
