import 'package:flutter/material.dart';
import 'package:todoapp/screens/Dashboard.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // To Avoid resize distrtion on keyboard open
  // https://stackoverflow.com/questions/46551268/when-the-keyboard-appears-the-flutter-widgets-resize-how-to-prevent-this

  // Login Form validation impl
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _username;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Container(
              child: SafeArea(
                child: Form(
                  key: _formKey,
                  child: Stack(
                    children: <Widget>[
                      getLoginCardview(),
                      getPageBottomImage(),
                      getAppIconandLoginText()
                    ],
                  ),
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
          ),
        ),
      ),
    );
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
                  width: 90,
                  height: 90,
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
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30),
              TextFormField(
                  decoration: InputDecoration(
                      labelText: "Username",
                      hintStyle:
                          TextStyle(color: Colors.black, fontSize: 14.0)),
                  keyboardType: TextInputType.text,
                  validator: (String arg) {
                    if (arg.trim().length < 1)
                      return 'username can\'t be null';
                    else
                      return null;
                  },
                  onSaved: (String val) {
                    _username = val;
                  }),
              SizedBox(height: 10),
              TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      //hintText: "",
                      hintStyle:
                          TextStyle(color: Colors.black, fontSize: 14.0)),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  validator: (String arg) {
                    if (arg.trim().length < 1)
                      return 'password can\'t be null';
                    else
                      return null;
                  },
                  onSaved: (String val) {
                    _password = val;
                  }),
              SizedBox(height: 30),
              RaisedButton(
                onPressed: () {
                  _validateInputs();
                },
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                // example 1
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

  void _validateInputs() {
    if (_formKey.currentState.validate()) {
      // If all data are correct then save data to out variables
      _formKey.currentState.save();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DashboardPage()));
    } else {
      // If all data are not valid then start auto validation.
      setState(() {});
    }
  }
}
