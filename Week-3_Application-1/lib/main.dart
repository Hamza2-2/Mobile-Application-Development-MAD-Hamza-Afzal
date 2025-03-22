import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceRollerApp());
}

class DiceRollerApp extends StatefulWidget {
  @override
  _DiceRollerAppState createState() => _DiceRollerAppState();
}

class _DiceRollerAppState extends State<DiceRollerApp> {
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ludo'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/dice_$diceNumber.png',
                  width: 150, height: 150),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: rollDice,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                ),
                child: Text('Roll Dice'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
