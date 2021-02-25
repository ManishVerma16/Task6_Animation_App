import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offsetAnimation;
  String password;
  String email;

  toastFun({String msg, Color bgcolor, Color textColour}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: bgcolor,
        textColor: textColour,
        fontSize: 18.0);
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )..reverse();
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(1.5, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticIn,
    ));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SafeArea(
          child: Column(
            children: [
              TypewriterAnimatedTextKit(
                text: [
                  'Login',
                ],
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
              Card(
                elevation: 5.0,
                color: Color(0xff68C5EE),
                child: Container(
                  height: 200,
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20.0,
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
                              fontSize: 20.0,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            )),
                        onChanged: (value) {
                          password = value;
                        },
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                onPressed: () => toastFun(
                  msg: 'Logged In',
                  bgcolor: Color(0xff43DECC),
                  textColour: Colors.black,
                ),
                child: Text(
                  'Login',
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
                splashColor: Color(0xff01579B),
                color: Color(0xff68C5EE),
              ),
              Container(
                child: SlideTransition(
                position: _offsetAnimation,
                child: Container(
                  color: Colors.amber,
                  height: 50.0,
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*

Container(
                color: Colors.red,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
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
                          msg: 'Logged In',
                          bgcolor: Color(0xff43DECC),
                          textColour: Colors.black,
                        ),
                        child: Text(
                          'Login',
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
                        splashColor: Color(0xff01579B),
                        color: Color(0xff68C5EE),
                      ),
                    ],
                  ),
                ),
              )

*/
