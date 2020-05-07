import 'package:flutter/material.dart';

void main() => runApp(ToDoApp());

class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        /*appBar: AppBar(
            leading: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('images/launcher.png'),
              ),
            ),
            title: Text("ToDo App"),
            backgroundColor: Colors.blueGrey[900],
          ),*/
        body: Container(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image(
              image: AssetImage('images/login_bg.png'),
            ),
          ),
        ),
      ),
    );
  }
}
