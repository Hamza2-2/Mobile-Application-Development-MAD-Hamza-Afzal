import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hamza Afzal App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.redAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: GestureDetector(
            onDoubleTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Second()),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/logo.png',
                    width: 170,
                    height: 170,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'HAMZA AFZAL',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Double tap to continue',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hamza Afzal'),
          backgroundColor: Colors.redAccent,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.person, color: Colors.white),
                text: "About Me",
              ),
              Tab(
                icon: Icon(Icons.location_city, color: Colors.white),
                text: "Village",
              ),
              Tab(
                icon: Icon(Icons.school, color: Colors.white),
                text: "Student Life",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Tabs(
              title:
                  'Hi, I am Hamza Afzal, a passionate computer science student.',
              detail:
                  'Hi, I am Hamza Afzal currently doing BSCS from Bahria University Islamabad, with interest in AI, software development, and tech innovation.',
            ),
            Tabs(
              title: 'My Village is Faisalabad.',
              detail:
                  'I am from Faisalabad, a historical city of Pakistan known for its agricultural significance and vibrant culture.',
            ),
            Tabs(
              title: 'I study at Bahria University.',
              detail:
                  'I’m currently in my 6th semester of BSCS at Bahria University with  a cpga of 3.63, where I’ve actively participated in academic and extracurricular activities.',
            ),
          ],
        ),
      ),
    );
  }
}

class Tabs extends StatelessWidget {
  final String title;
  final String detail;

  const Tabs({required this.title, required this.detail, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onLongPress: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Third(info: detail),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                title,
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Third extends StatelessWidget {
  final String info;

  const Third({required this.info, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detailed Information'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            info,
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
