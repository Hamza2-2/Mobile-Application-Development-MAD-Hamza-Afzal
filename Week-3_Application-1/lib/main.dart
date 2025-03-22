import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DiceRollerApp(),
  ));
}

class DiceRollerApp extends StatelessWidget {
  DiceRollerApp() : super();

  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    int diceNumber = 1;

    return Scaffold(
      appBar: AppBar(
        title: Text('Ludo'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/dice_${diceNumber}.png',
                    width: 150, height: 150),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      diceNumber = random.nextInt(6) + 1;
                    });
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  child: Text('Roll Dice'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
