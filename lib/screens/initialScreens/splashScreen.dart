
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:srividyapeetham/screens/initialScreens/logInScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LogInScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Center(
          child:
              Image.asset('assets/icons/e61c8b111f4efe1b22e771b36f7932c3.png'),
        ),
      ),
    );
  }
}
