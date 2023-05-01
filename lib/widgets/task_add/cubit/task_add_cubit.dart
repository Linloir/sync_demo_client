import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/models/main/category.dart';
import 'package:client/models/main/tag.dart';
import 'package:client/models/main/task.dart';
import 'package:client/repository/storage_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

part 'task_add_state.dart';

class TaskAddCubit extends Cubit<TaskAddState> {
  TaskAddCubit({
    required StorageRepository storageRepository,
  }): _storageRepository = storageRepository,
      super(const TaskAddState())
  {
    _categorySubscription = _storageRepository.categories.listen((categories) {
      emit(state.copyWith(
        category: state.category ?? (categories.isNotEmpty ? categories.first : null),
        allCategories: categories,
      ));
    });
    _tagSubscription = _storageRepository.tags.listen((tags) {
      emit(state.copyWith(
        allTags: tags,
      ));
    });
  }

  final StorageRepository _storageRepository;

  late final StreamSubscription _categorySubscription;
  late final StreamSubscription _tagSubscription;

  void updateTaskTitle(String taskTitle) {
    emit(state.copyWith(
      taskTitle: taskTitle,
    ));
  }

  void updateTags(List<Tag> tags) {
    emit(state.copyWith(
      tags: tags,
    ));
  }

  void updateCategory(Category? category) {
    emit(state.copyWith(
      category: category,
    ));
  }

  void addTag(String name) {
    final newTag = Tag(
      name: name,
      color: 0,
      dirty: true,
      updateAt: DateTime.now(),
      deleteAt: null,
    );
    _storageRepository.putTag(newTag);
  }

  void addCategory(String name) {
    final newCategory = Category(
      name: name,
      color: 0,
      dirty: true,
      updateAt: DateTime.now(),
      deleteAt: null,
    );
    _storageRepository.putCategory(newCategory);
  }

  void addTask() {
    final newTask = Task(
      uuid: const Uuid().v4(),
      title: state.taskTitle,
      status: false,
      dirty: true,
      updateAt: DateTime.now(),
      deleteAt: null,
      category: state.category,
      tags: state.tags.toSet(),
    );
    _storageRepository.putTask(newTask);
  }

  @override
  Future<void> close() {
    _categorySubscription.cancel();
    _tagSubscription.cancel();
    return super.close();
  }
}
