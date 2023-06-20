import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'task 1', isDone: true),
    Task(name: 'task 2'),
  ];

  void addTask(String title) {
    final task = Task(name: title);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(int i) {
    tasks.removeAt(i);
    notifyListeners();
  }

  int get taskCount => tasks.length;
}
