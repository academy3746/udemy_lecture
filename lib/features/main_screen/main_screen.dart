// ignore_for_file: avoid_print
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static String routeName = "/main";

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController _idController = TextEditingController();

  String _msg = "Here is returned data.";

  //final ValueNotifier<int> _notifier = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    _idController;
  }

  @override
  void dispose() {
    _idController.dispose();
    super.dispose();
  }

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
          children: [
            TextField(
              controller: _idController,
              decoration: const InputDecoration(
                labelText: "Input ID",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _msg = _idController.text.toString();
                });
                //_notifier.value = 30;
              },
              child: const Text("다음"),
            ),
            const SizedBox(
              height: 10,
            ),
            /*ValueListenableBuilder<int>(
              valueListenable: _notifier,
              builder: (BuildContext context, value, Widget? child) {
                return Text("Count: $value");
              },
            ),*/
            Text(
              _msg,
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
