import 'package:flutter/material.dart';
import 'contact.dart';
import 'info.dart';
import 'card.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homeapp(),
    );
  }
}

class homeapp extends StatelessWidget {
  homeapp({super.key});
  final contact = [
    {'hamza': "1234", 'javid': '4567'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("01-134222-060"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: contact.length,
        itemBuilder: (context, index) {
          final entry = contact[index].entries.first;
          return Cardview(name: entry.key, number: entry.value);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final newContact = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Contact()),
          );
          if (newContact != null) {
            contact.add(newContact);
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Contacts',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => info()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Contact()),
            );
          }
        },
      ),
    );
  }
}
