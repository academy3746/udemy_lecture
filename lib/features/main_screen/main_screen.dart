// ignore_for_file: avoid_print
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static String routeName = "/main";

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List myBand = [
    "Led Zeppelin",
    "Deep Purple",
    "Black Sabbath",
    "Oasis",
    "Korn",
    "Judas Priest",
    "White Snake",
    "Queen",
    "The Who",
    "KISS",
    "Nirvana",
    "Metallica",
    "MegaDeth",
    "Helloween",
    "Stratovarius",
    "Iron Maiden",
    "Radiohead",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Udemy Practice",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("Hello, ${myBand[index]}!"),
              subtitle: const Text("They are Rock Star!"),
            );
          },
          itemCount: myBand.length,
        ),
      ),
    );
  }
}
