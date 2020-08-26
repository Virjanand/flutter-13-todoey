import 'package:flutter/material.dart';
import 'package:flutter13todoey/models/tasks.dart';
import 'package:flutter13todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: Provider.of<Tasks>(context).tasks[index].name,
          isChecked: Provider.of<Tasks>(context).tasks[index].isDone,
          checkboxCallback: (checkboxState) {
              Provider.of<Tasks>(context).tasks[index].toggleDone();
          },
        );
      },
      itemCount: Provider.of<Tasks>(context).tasks.length,
    );
  }
}
