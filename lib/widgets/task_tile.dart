import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskString;
  final bool isChecked;
  final Function checkboxCallBack;
  final Function longPressedCallBack;

  TaskTile(
      {required this.taskString,
      required this.isChecked,
      required this.checkboxCallBack,
      required this.longPressedCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () => longPressedCallBack(),
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
