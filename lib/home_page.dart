import 'package:flutter/material.dart';
import 'package:init_project/new_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPressed = false;
  void onPressed() {
    setState(() {
      if (isPressed) {
        isPressed = false;
      } else {
        isPressed = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Center(
        child: NewButton(
          onPressed: onPressed,
          isPressed: isPressed,
        ),
      ),
    );
  }
}
