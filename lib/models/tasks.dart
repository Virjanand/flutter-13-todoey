import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter13todoey/models/task.dart';

class Tasks extends ChangeNotifier {
  List<Task> _tasks = [
    new Task(name: "test1")
  ];

  void add(Task newTask) {
    _tasks.add(newTask);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }
}
