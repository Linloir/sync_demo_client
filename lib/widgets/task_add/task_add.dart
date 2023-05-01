import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:client/widgets/task_add/cubit/task_add_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class TaskAddWidget extends StatelessWidget {
  const TaskAddWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskAddCubit>(
      create: (context) => TaskAddCubit(storageRepository: context.read()),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const SizedBox(height: 8),
            SizedBox(
              height: 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BlocBuilder<TaskAddCubit, TaskAddState>(
                    builder: (context, state) {
                      return Expanded(
                        child: MultiSelectDropDown(
                          onOptionSelected: (selected) {
                            final allTags = state.allTags;
                            final selectedTagNames = selected.map((tag) => tag.value);
                            final selectedTags = allTags.where((tag) {
                              return selectedTagNames.contains(tag.name);
                            });
                            context.read<TaskAddCubit>().updateTags(selectedTags.toList());
                          },
                          options: state.allTags.map((tag) {
                            return ValueItem(label: tag.name, value: tag.name);
                          }).toList(),
                          selectionType: SelectionType.multi,
                          chipConfig: const ChipConfig(wrapType: WrapType.scroll),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                  BlocBuilder<TaskAddCubit, TaskAddState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () {
                          // open dialog to add new tag
                          final allTagNames = state.allTags.map((tag) => tag.name);
                          showTextInputDialog(
                            context: context,
                            textFields: [
                              DialogTextField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Tag name cannot be empty';
                                  }
                                  if (allTagNames.contains(value)) {
                                    return 'Tag name already exists';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ).then((value) {
                            if (value == null || value.isEmpty) {
                              return;
                            }
                            context.read<TaskAddCubit>().addTag(value.first);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text('Add'),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BlocBuilder<TaskAddCubit, TaskAddState>(
                    builder: (context, state) {
                      return Expanded(
                        child: MultiSelectDropDown(
                          onOptionSelected: (selected) {
                            final allCategories = state.allCategories;
                            final selectedCategoryNames = selected.map((category) => category.value);
                            final selectedCategories = allCategories.where((category) {
                              return selectedCategoryNames.contains(category.name);
                            });
                            context.read<TaskAddCubit>().updateCategory(selectedCategories.isEmpty ? null : selectedCategories.first);
                          },
                          options: state.allCategories.map((category) {
                            return ValueItem(label: category.name, value: category.name);
                          }).toList(),
                          selectionType: SelectionType.single,
                          chipConfig: const ChipConfig(wrapType: WrapType.scroll),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                  BlocBuilder<TaskAddCubit, TaskAddState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () {
                          // open dialog to add new category
                          final allCategoryNames = state.allCategories.map((category) => category.name);
                          showTextInputDialog(
                            context: context,
                            textFields: [
                              DialogTextField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Category name cannot be empty';
                                  }
                                  if (allCategoryNames.contains(value)) {
                                    return 'Category name already exists';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ).then((value) {
                            if (value == null || value.isEmpty) {
                              return;
                            }
                            context.read<TaskAddCubit>().addCategory(value.first);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text('Add'),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 52,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: BlocBuilder<TaskAddCubit, TaskAddState>(
                      builder: (context, state) {
                        return TextField(
                          decoration: const InputDecoration(
                            labelText: 'Task title',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          onChanged: (value) {
                            context.read<TaskAddCubit>().updateTaskTitle(value);
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 12),
                  BlocBuilder<TaskAddCubit, TaskAddState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () {
                          context.read<TaskAddCubit>().addTask();
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text('Add'),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
