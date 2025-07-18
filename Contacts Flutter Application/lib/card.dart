import 'package:flutter/material.dart';

class Cardview extends StatelessWidget {
  const Cardview({super.key, required this.name, required this.number});
  final String name;
  final String number;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue[400]!, Colors.blue[600]!],
          ),
        ),
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white.withOpacity(0.2),
              radius: 25,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.phone_in_talk,
                        color: Colors.white.withOpacity(0.8),
                        size: 16,
                      ),
                      SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          number,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Icon(
                  Icons.call,
                  color: Colors.white.withOpacity(0.8),
                  size: 20,
                ),
                SizedBox(height: 4),
                Icon(
                  Icons.message,
                  color: Colors.white.withOpacity(0.6),
                  size: 16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
