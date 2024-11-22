import 'package:flutter/material.dart';
import 'package:todo_app_provider/models/task_model.dart';

class SaveTask extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(
      title: "Aprender a programar",
      description: "Comenzar con Flutter y Provider",
      isCompleted: true,
    ),
  ];

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void checkTask(int index) {
    _tasks[index].isDone();
    notifyListeners();
  }
}
