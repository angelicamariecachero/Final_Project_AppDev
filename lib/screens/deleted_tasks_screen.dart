import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
//import '../models/task.dart';

class DeletedTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deleted Tasks'),
      ),
      body: Consumer<TaskData>(
        builder: (context, taskData, child) {
          final deletedTasks = taskData.deletedTasks;
          return ListView.builder(
            itemCount: deletedTasks.length,
            itemBuilder: (context, index) {
              final task = deletedTasks[index];
              return ListTile(
                title: Text(
                  task.title,
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.restore),
                  onPressed: () {
                    taskData.restoreTask(task);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
