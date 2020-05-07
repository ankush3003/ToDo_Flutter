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
        /*body: Container(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image(
              image: AssetImage('images/login_bg.png'),
            ),
          ),
        ),*/
        body: SafeArea(
          child: Container(
            color: Colors.teal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 100.0,
                  height: double.infinity,
                  color: Colors.red,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: double.infinity,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
