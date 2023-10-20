// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:udemy_lecture/features/screens/sub_screen.dart';

class MainScreen extends StatefulWidget {
  static String routeName = "/main";

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void _pushSubScreen() {
    Navigator.pushNamed(context, SubScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.blue,
        title: const Text(
          "Main Screen",
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
          children: [
            Container(
              width: 120,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: TextButton(
                onPressed: _pushSubScreen,
                child: const Text(
                  "NEXT",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        elevation: 1,
        child: ListView(
          children: const [
            DrawerHeader(
              child: Text("Welcome!"),
            ),
            ListTile(
              title: Text("Home Screen"),
            ),
            ListTile(
              title: Text("Main Screen"),
            ),
            ListTile(
              title: Text("Sub Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
