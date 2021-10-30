import 'package:flutter/material.dart';
import 'package:todonote/model/task.dart';
import 'package:todonote/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  late List<Task> tasks;
  TasksList(this.tasks);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            taskString: widget.tasks[index].taskString,
            isChecked: widget.tasks[index].isDone,
            checkboxCallBack: (bool checkboxStatus) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
    );
  }
}
