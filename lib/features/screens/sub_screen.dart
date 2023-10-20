import 'package:flutter/material.dart';

class SubScreen extends StatelessWidget {
  static String routeName = "/sub";

  const SubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text(
            "Sub Screen",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          bottom: const TabBar(tabs: [
            Tab(text: "Tab01"),
            Tab(text: "Tab02"),
            Tab(text: "Tab03"),
          ]),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30,
          ),
          child: TabBarView(
            children: [
              Center(
                child: Text("Killing Machine01"),
              ),
              Center(
                child: Text("Killing Machine02"),
              ),
              Center(
                child: Text("Killing Machine03"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
