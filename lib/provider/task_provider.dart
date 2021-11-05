import 'package:flutter/foundation.dart';
import 'package:todonote/model/task.dart';
import 'dart:collection';

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskString: 'Buy Milk'),
    Task(taskString: 'Buy Egg'),
    Task(taskString: 'Buy Chicken'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void taskAdd(String newTask) {
    _tasks.add(Task(taskString: newTask));
    notifyListeners();
  }

  void taskUpdate(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
