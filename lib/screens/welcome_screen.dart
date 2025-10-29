// Welcome Screen w/ Animated Text
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:signup_adventure/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  String _avatar = '';
  // const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Animated Emoji
              AnimatedContainer(
                duration: const Duration(seconds: 2),
                curve: Curves.bounceOut,
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.emoji_emotions,
                  color: Colors.white,
                  size: 60,
                ),
              ),
              const SizedBox(height: 40),
              // Animated Title
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Join The Adventure!',
                    textStyle: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 1,
              ),
              const SizedBox(height: 20),
              const Text(
                'Choose your avatar',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => _avatar = '😎',
                    child: Text('😎', style: TextStyle(fontSize: 50)),
                  ),
                  TextButton(
                    onPressed: () => _avatar = '🤓',
                    child: Text('🤓', style: TextStyle(fontSize: 50)),
                  ),
                  TextButton(
                    onPressed: () => _avatar = '🤪',
                    child: Text('🤪', style: TextStyle(fontSize: 50)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Create your account and start your journey',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 50),
              // Start Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 5,
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Start Adventure',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
