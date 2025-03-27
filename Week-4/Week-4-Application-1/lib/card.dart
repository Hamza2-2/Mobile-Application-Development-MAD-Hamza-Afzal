import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView(this.name, {super.key});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: const EdgeInsets.all(2),
      height: 78,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(width: 30),
            const Icon(
              Icons.person,
              size: 40,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('My Home Page'),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: const [
            CardView('Hamza Afzal'),
            CardView('Taha Shams'),
            CardView('Abdullah'),
            CardView('Aitzaz'),
            CardView('Saad Nawaz'),
            CardView('Saad Butt'),
            CardView('Amber Ali shah'),
            CardView('Shayan Akram Abbasi'),
            CardView('Abd ur Rehman'),
            CardView('M. Talha'),
            CardView('Osman Siddique'),
            CardView('Adil Bilal'),
            CardView('Mazhar Naeem'),
          ],
        ),
      ),
    );
  }
}
