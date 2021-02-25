import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String email;
  String password;
  String firstName;
  String lastName;
  String phoneNumber;

  toastFun({String msg, Color bgcolor, Color textColour}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: bgcolor,
        textColor: textColour,
        fontSize: 20.0,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Expanded(
            child: Column(
            children: [
              TypewriterAnimatedTextKit(
              text: ['Sign Up',],
              textStyle: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Color(0xff43DECC),
                  letterSpacing: 3.0,
                ),
              ),
              Flexible(
                child: Hero(
                  tag: 'Flutter_bird',
                  child: Container(
                    child: Image(
                      image: AssetImage('images/flutter_bird.png'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        hintStyle: TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                      onChanged: (value) {
                        firstName = value;
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                        hintStyle: TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                      onChanged: (value) {
                        lastName = value;
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Phone',
                        hintStyle: TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                      onChanged: (value) {
                        phoneNumber = value;
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                      onChanged: (value) {
                        email = value;
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                      onChanged: (value) {
                        password = value;
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    FlatButton(
                      onPressed: () => toastFun(
                        msg: 'SuccessFully Registered',
                        bgcolor: Color(0xff43DECC),
                        textColour: Colors.white,
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.white,
                          letterSpacing: 3.0,
                        ),
                      ),
                      minWidth: 150.0,
                      height: 50.0,
                      splashColor: Color(0xff68C5EE),
                      color: Color(0xff01579B),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
