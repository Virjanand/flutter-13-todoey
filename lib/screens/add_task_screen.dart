import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter13todoey/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  const AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (name) {
                newTaskTitle = name;
              },
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                addTaskCallback(newTaskTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
