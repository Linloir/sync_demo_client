import 'package:client/widgets/task_list/components/task_tile.dart';
import 'package:client/widgets/task_list/cubit/task_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskListWidget extends StatelessWidget {
  const TaskListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskListCubit>(
      create: (context) => TaskListCubit(storageRepository: context.read()),
      child: BlocBuilder<TaskListCubit, TaskListState>(
        builder: (context, state) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.tasks.length,
              itemBuilder: (context, index) {
                final task = state.tasks[index];
                return TaskTileWidget(task: task);
              },
            ),
          );
        },
      ),
    );
  }
}
