import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];
  List<Task> _deletedTasks = []; // List to track deleted tasks

  List<Task> get tasks => _tasks;
  List<Task> get deletedTasks => _deletedTasks;

  int get taskCount => _tasks.length;

  void addTask(String title) {
    final task = Task(title: title);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.isDone = !task.isDone;
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    _deletedTasks.add(task); // Move task to deleted list
    notifyListeners();
  }

  void restoreTask(Task task) {
    _deletedTasks.remove(task);
    _tasks.add(task);
    notifyListeners();
  }

  List<Task> get completedTasks => _tasks.where((task) => task.isDone).toList();
}
