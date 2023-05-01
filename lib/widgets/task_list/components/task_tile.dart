import 'package:client/models/main/task.dart';
import 'package:client/widgets/task_list/cubit/task_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskTileWidget extends StatelessWidget {
  const TaskTileWidget({
    Key? key,
    required this.task,
  }) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: ValueKey(task.uuid),
      leading: Checkbox(
        value: task.status,
        onChanged: (value) {
          context.read<TaskListCubit>().updateTask(
            task
              ..status = value ?? false
              ..dirty = true
              ..updateAt = DateTime.now()
          );
        },
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          context.read<TaskListCubit>().updateTask(
            task
              ..dirty = true
              ..deleteAt = DateTime.now()
              ..updateAt = DateTime.now()
          );
        },
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(task.title),
          const SizedBox(width: 8),
          Badge(
            label: Text(task.category!.name),
            backgroundColor: Colors.blue,
          ),
          ...task.tags.map((tag) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(width: 4,),
                Badge(
                  label: Text(tag.name),
                  backgroundColor: Colors.green,
                ),
              ],
            );
          })
        ],
      ),
      subtitle: Text('Updated at: ${task.updateAt.year}-${task.updateAt.month}-${task.updateAt.day} ${task.updateAt.hour}:${task.updateAt.minute}'),
    );
  }
}
