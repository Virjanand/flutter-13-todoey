import 'package:flutter/foundation.dart';
import 'package:flutter13todoey/models/task.dart';

class Tasks extends ChangeNotifier {
  List<Task> tasks = [
    new Task(name: "test1")
  ];

  void add(Task newTask) {
    tasks.add(newTask);
    notifyListeners();
  }
}
