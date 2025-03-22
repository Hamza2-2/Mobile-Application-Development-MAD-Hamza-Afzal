import 'package:flutter/material.dart';
import 'intro.dart';
import 'education.dart';
import 'hobbies.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Profile"),
          backgroundColor: Colors.blue,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: "Intro"),
              Tab(icon: Icon(Icons.school), text: "Education"),
              Tab(icon: Icon(Icons.sports_esports), text: "Hobbies"),
            ],
          ),
        ),
        body: Container(
          color: Colors.yellow,
          child: TabBarView(
            children: [
              IntroPage(),
              EducationPage(),
              HobbiesPage(),
            ],
          ),
        ),
      ),
    );
  }
}
