import 'package:bigbuddy/login.dart';
import 'package:bigbuddy/welcome.dart';
import 'package:bigbuddy/white_board.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class splash_screen extends StatelessWidget {
  const splash_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('assets/bigbuddy.png'), 
      nextScreen: welcome(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.black54,
      );
  }
}