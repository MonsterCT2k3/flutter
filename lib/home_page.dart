import 'package:flutter/material.dart';
import 'package:init_project/new_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: const Center(
        child: NewButton(),
      ),
    );
  }
}
