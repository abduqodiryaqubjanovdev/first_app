
import 'package:abduqodir/pages/home_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: Column(
        children: [
          Center(
            child: LottieBuilder.asset('assets/animation/cart_animation.json'),
          )
        ],
      ), 
    nextScreen: const Homepage(),
    backgroundColor: Colors.blue,
    splashIconSize: 300,
    duration: 2000,
    splashTransition: SplashTransition.fadeTransition,
    );
  }
}