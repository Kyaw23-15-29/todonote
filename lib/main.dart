import 'package:flutter/material.dart';
import 'package:todonote/pages/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todonote/provider/task_provider.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TaskProvider>(create: (_) => TaskProvider())
      ],
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
