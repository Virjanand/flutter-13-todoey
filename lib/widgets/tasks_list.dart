import 'package:flutter/material.dart';
import 'package:flutter13todoey/models/task.dart';
import 'package:flutter13todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

List<Task> tasks = [
  Task(name: 'Buy milk'),
  Task(name: 'Buy eggs'),
  Task(name: 'Buy bread'),
];

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (checkBoxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
