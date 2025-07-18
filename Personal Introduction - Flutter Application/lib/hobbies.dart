import 'package:flutter/material.dart';

class HobbiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        "Hobbies:\n• Coding\n• Gaming\n• Football\n• Chess",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
