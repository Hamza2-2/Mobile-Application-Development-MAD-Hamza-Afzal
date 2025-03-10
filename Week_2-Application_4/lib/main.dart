import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ScoreBoard(),
  ));
}

class ScoreBoard extends StatefulWidget {
  @override
  _ScoreBoardState createState() => _ScoreBoardState();
}

class _ScoreBoardState extends State<ScoreBoard> {
  int teamAScore = 0;
  int teamBScore = 0;

  void addScore(String team, int points) {
    setState(() {
      if (team == 'A') {
        teamAScore += points;
      } else {
        teamBScore += points;
      }
    });
  }

  void resetScores() {
    setState(() {
      teamAScore = 0;
      teamBScore = 0;
    });
  }

  Widget buildButton(String text, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
              // Team A Column
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Team A",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text(teamAScore.toString(),
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    buildButton("+3 POINTS", () => addScore('A', 3)),
                    SizedBox(height: 10),
                    buildButton("+2 POINTS", () => addScore('A', 2)),
                    SizedBox(height: 10),
                    buildButton("FREE THROW", () => addScore('A', 1)),
                  ],
                ),
              ),
              Container(width: 2, height: 250, color: Colors.black12),
              // Team B Column
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Team B",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text(teamBScore.toString(),
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    buildButton("+3 POINTS", () => addScore('B', 3)),
                    SizedBox(height: 10),
                    buildButton("+2 POINTS", () => addScore('B', 2)),
                    SizedBox(height: 10),
                    buildButton("FREE THROW", () => addScore('B', 1)),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          buildButton("RESET", resetScores),
        ],
      ),
    );
  }
}
