import 'package:Animation_task/first_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
import 'package:splashscreen/splashscreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        nextScreen: FirstScreen(),
        splash: Column(
          children: [
            Expanded(
              child: Container(
                  child: Image(
                image: AssetImage('images/flutter_logo.png'),
                width: 400,
                height: 400.0,
              )),
            ),
            SizedBox(
              height: 10.0,
            ),
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
          ],
        ),
        splashTransition: SplashTransition.rotationTransition,
        animationDuration: Duration(milliseconds: 1500),
        splashIconSize: 250.0,
      ),
    );
  }
}

/*
SplashScreen(
      seconds: 10,
      image: Image.asset('assets/loading.gif'),
      photoSize: 200.0,
      backgroundColor: Colors.blue,
      loaderColor: Colors.amber,
      navigateAfterSeconds: FirstPage(),
      // pageRoute: ,
    ),

Scaffold(
      appBar: AppBar(
        title: Text('Animation App'),
      ),
      body: SafeArea(
        child: Container(
          child: Text('Main Screen'),
        )
      ),
    );

Center(child: SliderButton(
      action: () {
        ///Do something here
        Navigator.of(context).pop();
      },
       label: Text(
          "Slide to cancel Event",
          style: TextStyle(
              color: Color(0xff4a4a4a), fontWeight: FontWeight.w500, fontSize: 17),
        ),
      icon: Text(
        "x",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 44,
        ),
      ),


    ));
    


Center(
            child: SliderButton(
              action: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FirstScreen(),
                  ),
                );
              },
              label: Text(
                'Let\'s go',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.white, //0xff54C5F8  01579B
                  letterSpacing: 3.0,
                ),
              ),
              icon: Icon(Icons.arrow_forward),
            ),
          ),

*/
