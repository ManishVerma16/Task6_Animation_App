import 'package:Animation_task/main_screen.dart';
import 'package:flutter/material.dart';
// import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      //Splash()
    );
  }
}


/*
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      image: Image.asset('assets/loading.gif'),
      photoSize: 200.0,
      backgroundColor: Colors.blue,
      loaderColor: Colors.amber,
      navigateAfterSeconds: MainScreen(),
      // pageRoute: ,
    );
  }
}
*/
