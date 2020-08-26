import 'package:flutter/material.dart';
import 'package:flutter13todoey/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

import 'models/tasks.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => Tasks(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
