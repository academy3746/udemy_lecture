// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  static String routeName = "/main";

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "I'm Administrator.",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Expanded(
                  child: Text("Deep Purple"),
                ),
                Expanded(
                  child: Text("Led Zeppelin"),
                ),
                Expanded(
                  child: Text("Black Sabbath"),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              width: 300,
              height: 80,
              alignment: Alignment.center,
              child: Text(
                "Ronnie James DIO",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/mac.jpg",
                  width: 100,
                  height: 100,
                ),
                const FaIcon(
                  FontAwesomeIcons.music,
                  size: 75,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                fixedSize: const Size(
                  100,
                  45,
                ),
                elevation: 10,
              ),
              onPressed: () {
                print("ElevatedButton has pressed.");
              },
              child: const Text(
                "Next",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
