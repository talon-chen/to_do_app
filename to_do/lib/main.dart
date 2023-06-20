import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/screens/tasks_screen.dart';
import 'package:to_do/models/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        title: 'My To Do List',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const TaskScreen(),
      ),
    );
  }
}
