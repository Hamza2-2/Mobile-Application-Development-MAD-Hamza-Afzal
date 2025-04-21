import 'package:flutter/material.dart';

class Cardview extends StatelessWidget {
  const Cardview({super.key, required this.name, required this.number});
  final String name;
  final String number;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      padding: EdgeInsets.all(4),
      height: 78,
      width: 100,
      child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.pink,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(name)],
                )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(number)],
                )),
              ])),
    );
  }
}
