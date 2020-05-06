import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("ToDo App"),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Container(
            child: Image(
              image: AssetImage('images/login_bg.png'),
            ),
          ),
        ),
      ),
    );
