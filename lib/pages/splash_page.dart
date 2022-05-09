import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app_015/pages/page1.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Splash_page extends StatelessWidget {
  static const String id = "splash_page";

  const Splash_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset("assets/logos/logo_icon.png"),
          Text(
            "New upp",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      splashIconSize: 300,
      duration: 1000,
      splashTransition: SplashTransition.scaleTransition,
      pageTransitionType: PageTransitionType.topToBottom,
      nextScreen: Page1(),
    );
  }
}
