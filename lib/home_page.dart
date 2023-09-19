import 'package:flutter/material.dart';
import 'package:init_project/glass_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/picture2.jpg'),
              fit: BoxFit.cover),
        ),
        alignment: const Alignment(0, 0),
        child: const GlassBox(
          height: 200.0,
          width: 250.0,
          child: Text(
            'Hello',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
