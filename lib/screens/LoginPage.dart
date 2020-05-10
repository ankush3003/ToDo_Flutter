import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Stack(
            children: <Widget>[
              getLoginCardview(),
              getPageBottomImage(),
            ],
          ),
        ),
      ),
    );
  }
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
      margin: EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.album),
            title: Text('The Enchanted Nightingale'),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('BUY TICKETS'),
              ),
              FlatButton(
                child: const Text('LISTEN'),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget getLoginCard() {
  return new Container(
    width: double.infinity,
//      height: ScreenUtil.getInstance().setHeight(500),
    margin: EdgeInsets.only(left: 50.0, right: 50.0),
    padding: EdgeInsets.only(bottom: 1),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 15.0),
              blurRadius: 15.0),
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, -10.0),
              blurRadius: 10.0),
        ]),
    child: Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Login",
              style: TextStyle(
                  fontSize: 45, fontFamily: "Poppins-Bold", letterSpacing: .6)),
          SizedBox(
            height: 30,
          ),
          Text("Username",
              style: TextStyle(fontFamily: "Poppins-Medium", fontSize: 26)),
          TextField(
            decoration: InputDecoration(
                hintText: "username",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
          ),
          SizedBox(
            height: 30,
          ),
          Text("PassWord",
              style: TextStyle(fontFamily: "Poppins-Medium", fontSize: 26)),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "Forgot Password?",
                style: TextStyle(
                    color: Colors.blue,
                    fontFamily: "Poppins-Medium",
                    fontSize: 28),
              )
            ],
          )
        ],
      ),
    ),
  );
}
