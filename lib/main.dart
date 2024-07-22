import 'package:animated_splash_screen/animated_splash_screen.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:task_master_app/screens/task_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
            child: Lottie.asset(
              'assets/Animation-1721638500978.json') 
            ), 
            nextScreen: TaskScreen(),
      duration: 5000,
      splashIconSize: 5000,
      backgroundColor: Colors.blue, 
    );
  }

}
