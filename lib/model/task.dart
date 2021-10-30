import 'package:flutter/foundation.dart';

class Task {
  String taskString;
  bool isDone;

  Task({required this.taskString, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
