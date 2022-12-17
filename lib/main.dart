import 'package:calorimeter/views/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFA000000),
      ),
      home: SplashScreen(),
    );
  }
}
