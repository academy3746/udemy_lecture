import 'dart:async';

import 'package:flutter/material.dart';
import 'package:udemy_lecture/features/main_screen/main_screen.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        context,
        MainScreen.routeName,
      );
    });

    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          "Welcome to my world!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 38,
          ),
        ),
      ),
    );
  }
}
