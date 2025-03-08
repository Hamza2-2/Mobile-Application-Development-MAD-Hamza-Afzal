import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Counter(),
  ));
}

class Counter extends StatefulWidget {
  @override
  CounterState createState() => CounterState();
}

class CounterState extends State<Counter> {
  int teamAScore = 0;
  int teamBScore = 0;

  void addThreePointsTeamA() {
    setState(() {
      teamAScore += 3;
    });
  }

  void addTwoPointsTeamA() {
    setState(() {
      teamAScore += 2;
    });
  }

  void addFreeThrowTeamA() {
    setState(() {
      teamAScore += 1;
    });
  }

  void addThreePointsTeamB() {
    setState(() {
      teamBScore += 3;
    });
  }

  void addTwoPointsTeamB() {
    setState(() {
      teamBScore += 2;
    });
  }

  void addFreeThrowTeamB() {
    setState(() {
      teamBScore += 1;
    });
  }

  void resetScores() {
    setState(() {
      teamAScore = 0;
      teamBScore = 0;
    });
  }

  Widget ScoreColumn(String team, int score, Function addThree, Function addTwo,
      Function addOne) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(team,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          Text(score.toString(),
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          SizedBox(height: 15),
          buildButton("+3 POINTS", addThree),
          SizedBox(height: 10),
          buildButton("+2 POINTS", addTwo),
          SizedBox(height: 10),
          buildButton("FREE THROW", addOne),
        ],
      ),
    );
  }

  Widget buildButton(String text, Function onPressed) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15), // Replaced symmetric
      ),
      child: Text(text, style: TextStyle(fontSize: 16)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Court Counter", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              ScoreColumn("Team A", teamAScore, addThreePointsTeamA,
                  addTwoPointsTeamA, addFreeThrowTeamA),
              Container(width: 2, height: 250, color: Colors.black12),
              ScoreColumn("Team B", teamBScore, addThreePointsTeamB,
                  addTwoPointsTeamB, addFreeThrowTeamB),
            ],
          ),
          SizedBox(height: 20),
          buildButton("RESET", resetScores),
        ],
      ),
    );
  }
}
