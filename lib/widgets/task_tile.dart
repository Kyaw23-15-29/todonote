import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskString;
  final bool isChecked;
  final Function checkboxCallBack;

  TaskTile(
      {required this.taskString,
      required this.isChecked,
      required this.checkboxCallBack});

  // void checkboxCallback(bool checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskString,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) => checkboxCallBack(value),
      ),
    );
  }
}
