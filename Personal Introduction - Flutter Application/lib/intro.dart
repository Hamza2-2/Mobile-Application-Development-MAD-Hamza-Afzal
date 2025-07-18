import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        "Hello! I am Hamza Afzal, a Computer Science student at Bahria University.",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
