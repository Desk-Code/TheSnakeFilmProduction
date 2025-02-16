import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart' show Lottie;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          "assets/animation/profileloader.json",
          repeat: false,
          onLoaded: (composition) {
            log('Animation Duration: ${composition.duration}');
          },
        ),
      ),
    );
  }
}
