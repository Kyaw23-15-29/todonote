import 'package:flutter/material.dart';

import 'package:todonote/provider/task_provider.dart';
import 'package:todonote/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todonote/model/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (BuildContext context, taskProvider, Widget? child) {
        return ListView.builder(
          itemCount: taskProvider.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              taskString: taskProvider.tasks[index].taskString,
              isChecked: taskProvider.tasks[index].isDone,
              checkboxCallBack: (bool checkboxStatus) {
                taskProvider.taskUpdate(taskProvider.tasks[index]);
              },
              longPressedCallBack: () =>
                  taskProvider.deleteTask(taskProvider.tasks[index]),
            );
          },
        );
      },
    );
  }
}
