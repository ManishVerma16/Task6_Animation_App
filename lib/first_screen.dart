import 'package:Animation_task/login_screen.dart';
import 'package:Animation_task/signup_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:slider_button/slider_button.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Flutter',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Color(0xff68C5EE),
                    letterSpacing: 2.0,
                  ),
                ),
                Text(
                  'Animations',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Color(0xff01579B), //0xff54C5F8  01579B
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Hero(
                tag: 'Flutter_bird',
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: _controller.value * 2 * pi,
                      child: child,
                    );
                  },
                  child: Container(
                    child: Image(
                      image: AssetImage('images/flutter_bird.png'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 70.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: WavyAnimatedTextKit(
                      text: [
                        'Welcome',
                      ],
                      textStyle: TextStyle(
                        color: Color(0xff68C5EE),
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        letterSpacing: 2.0,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: WavyAnimatedTextKit(
                      text: ['To Flutter'],
                      textStyle: TextStyle(
                        color: Color(0xff43DECC),
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        letterSpacing: 2.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: WavyAnimatedTextKit(
                      text: ['Animations'],
                      textStyle: TextStyle(
                        color: Color(0xff01579B),
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 25.0,
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),

            Center(
              child: SliderButton(
                action: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                // baseColor: Color(0xff68C5EE),
                width: 200,
                height: 50,
                buttonSize: 50,
                buttonColor: Color(0xff01579B),
                backgroundColor: Color(0xff68C5EE),
                boxShadow: BoxShadow(
                    color: Color(0xff01579B),
                    spreadRadius: 4.0,
                    blurRadius: 8.0),
                dismissible: false,
                label: Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black, //0xff54C5F8  01579B
                    letterSpacing: 3.0,
                  ),
                ),
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: SliderButton(
                action: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ),
                  );
                },
                width: 200,
                height: 50,
                buttonSize: 50,
                boxShadow: BoxShadow(
                    color: Color(0xff68C5EE),
                    spreadRadius: 4.0,
                    blurRadius: 8.0),
                buttonColor: Color(0xff68C5EE),
                backgroundColor: Color(0xff01579B),
                dismissible: false,
                label: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    letterSpacing: 3.0,
                  ),
                ),
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}

/*

TypewriterAnimatedTextKit(
                  text: ['Flash Chat'],
                  repeatForever: true,
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),

FlatButton(
                  onPressed: () => print('Sign Up'),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.white, //0xff54C5F8  01579B
                      letterSpacing: 3.0,
                    ),
                  ),
                  minWidth: 150.0,
                  height: 50.0,
                  splashColor: Color(0xff68C5EE),
                  color: Color(0xff01579B), //0xff54C5F8  01579B
                ),

AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0.0, 255.0),
                  child: Container(
                    color: Color(0xFF7F7F7F),
                    child: Text('Quarter'),
                  ),
                );
              },
            ),

Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AnimatedBuilder(
                        animation: _controller,
                        builder: (context, child) {
                          return Transform.rotate(
                            angle: -_controller.value * 2 * pi,
                            child: child,
                          );
                        },
                        child: FlatButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
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
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      AnimatedBuilder(
                        animation: _controller,
                        builder: (context, child) {
                          return Transform.rotate(
                            angle: _controller.value * 2 * pi,
                            child: child,
                          );
                        },
                        child: FlatButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupScreen(),
                            ),
                          ),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: Colors.white, //0xff54C5F8  01579B
                              letterSpacing: 3.0,
                            ),
                          ),
                          minWidth: 150.0,
                          height: 50.0,
                          splashColor: Color(0xff68C5EE),
                          color: Color(0xff01579B), //0xff54C5F8  01579B
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
*/
