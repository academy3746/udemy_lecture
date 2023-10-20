import 'package:flutter/material.dart';

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
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi!",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Text(
              "I'm Administrator.",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Hey!"),
                Text("Jude!"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
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
          ],
        ),
      ),
    );
  }
}
