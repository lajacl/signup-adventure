// The Adventure Begins - Main Dart File
// Replace lib/main.dart with this exciting code:
import 'package:flutter/material.dart';
import 'package:signup_adventure/screens/welcome_screen.dart';

void main() {
  runApp(const SignupAdventureApp());
}

class SignupAdventureApp extends StatelessWidget {
  const SignupAdventureApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signup Adventure ',
      theme: ThemeData(primarySwatch: Colors.deepPurple, fontFamily: 'Roboto'),
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
