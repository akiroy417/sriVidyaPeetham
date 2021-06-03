import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:srividyapeetham/screens/initialScreens/logInScreen.dart';
import 'package:srividyapeetham/screens/initialScreens/splashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Srividyapeetham',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/logIn': (context) => LogInScreen(),
      },
      theme: ThemeData(
        primaryColor: Color(0xFFFFE082),
      ),
    );
  }
}
