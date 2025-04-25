import 'package:flutter/material.dart';
import 'package:reg_auth/screens/registration_screen.dart';
import 'package:reg_auth/screens/login_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EZY App',
      home: WelcomeScreen(),
    );
  }
}
