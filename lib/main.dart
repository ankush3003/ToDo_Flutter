import 'package:flutter/material.dart';
import 'package:todoapp/screens/LoginPage.dart';

void main() => runApp(ToDoApp());

class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData.light(),
    );
  }
}
