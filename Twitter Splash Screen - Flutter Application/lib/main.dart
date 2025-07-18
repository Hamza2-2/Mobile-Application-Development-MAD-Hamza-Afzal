import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: tscreen(),
    );
  }
}

class tscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1DA1F2),
      body: Center(
        child: Image.asset(
          "assets/twitter_logo.png",
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
