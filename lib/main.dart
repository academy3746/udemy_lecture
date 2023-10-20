import 'package:flutter/material.dart';
import 'package:udemy_lecture/features/screens/main_screen.dart';
import 'package:udemy_lecture/features/screens/splash_screen.dart';
import 'package:udemy_lecture/features/screens/sub_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Udemy Practice Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        primaryColor: Colors.blue,
        useMaterial3: false,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        MainScreen.routeName: (context) => const MainScreen(),
        SubScreen.routeName: (context) => const SubScreen(),
      },
    );
  }
}
