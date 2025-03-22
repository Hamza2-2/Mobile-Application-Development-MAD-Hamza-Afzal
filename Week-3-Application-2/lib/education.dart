import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        "Education:\n• BSCS - Bahria University\n• CGPA: 3.6",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
