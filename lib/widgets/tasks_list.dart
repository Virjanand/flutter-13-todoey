import 'package:flutter/material.dart';
import 'package:flutter13todoey/models/tasks.dart';
import 'package:flutter13todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (context, tasks, child) {
        return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: tasks.tasks[index].name,
            isChecked: tasks.tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              tasks.tasks[index].toggleDone();
            },
          );
        },
        itemCount: tasks.taskCount,
      );
      },
    );
  }
}
