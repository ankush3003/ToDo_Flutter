import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              getLoginCardview(),
              getPageBottomImage(),
              getAppIconandLoginText()
            ],
          ),
        ),
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 1.2,
            colors: [
              const Color(0xFF258DC1),
              const Color(0xFF000000),
            ],
          ),
        ),
      ),
    );
  }
}

Widget getAppIconandLoginText() {
  return Container(
    height: 140,
    margin: EdgeInsets.all(100.0),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      gradient: RadialGradient(
        radius: 0.7,
        colors: [
          const Color(0xFF42A5F5),
          const Color(0xFF0D47A1),
        ],
      ),
    ),
    child: Column(
      children: <Widget>[
        Center(
            child: Image(
                width: 80,
                height: 80,
                image: AssetImage('images/launcher.png'))),
        Center(
          child: Text(
            "TODO App",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Log In!",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontFamily: "Poppins"),
          ),
        ),
      ],
    ),
  );
}

Widget getPageBottomImage() {
  return Positioned(
    bottom: 0.0,
    left: 0.0,
    right: 0.0,
    height: 180.0,
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Image(
        image: AssetImage('images/login_bg.png'),
      ),
    ),
  );
}

Widget getLoginCardview() {
  return Center(
    child: Card(
      elevation: 8.0,
      margin: EdgeInsets.all(24.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 40),
            _getStyledText(
                txt: "Username", fontSize: 16, fontWeight: FontWeight.normal),
            _getStyledTextField(
                hintText: "Enter username", fontSize: 14.0, obscureText: false),
            SizedBox(height: 20),
            _getStyledText(
                txt: "Password", fontSize: 16, fontWeight: FontWeight.normal),
            _getStyledTextField(
                hintText: "Enter password", fontSize: 14.0, obscureText: true),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)), // example 1
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(8.0)), // Example 2
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(12),
                child: Center(
                    child:
                        const Text('Log In', style: TextStyle(fontSize: 20))),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget _getStyledText({String txt, double fontSize, FontWeight fontWeight}) {
  return Text(txt,
      style: TextStyle(
          fontSize: fontSize, fontFamily: "Poppins", fontWeight: fontWeight));
}

Widget _getStyledTextField(
    {String hintText, double fontSize, bool obscureText}) {
  return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black, fontSize: fontSize)));
}
