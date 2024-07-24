import 'package:flutter/material.dart';
import '../models/task.dart';

class CompletedTasksScreen extends StatelessWidget {
  final List<Task> tasks;

  CompletedTasksScreen({required this.tasks});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Completed Tasks'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index].title),
          );
        },
      ),
    );
  }
}
