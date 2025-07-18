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

class homeapp extends StatefulWidget {
  homeapp({super.key});

  @override
  State<homeapp> createState() => _homeappState();
}

class _homeappState extends State<homeapp> {
  final List<Map<String, String>> contacts = [
    {'name': 'hamza', 'number': '1234'},
    {'name': 'javid', 'number': '4567'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.contacts,
              color: Colors.white,
              size: 24,
            ),
            SizedBox(width: 8),
            Text(
              "01-134222-060",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blue[700],
        elevation: 4,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue[50]!, Colors.white],
          ),
        ),
        child: contacts.isEmpty
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.contact_phone,
                      size: 80,
                      color: Colors.grey[400],
                    ),
                    SizedBox(height: 16),
                    Text(
                      "No contacts yet",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.touch_app,
                          size: 16,
                          color: Colors.grey[500],
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Tap the + button to add your first contact",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : ListView.builder(
                padding: EdgeInsets.all(16),
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: InkWell(
                      onTap: () {
                        // Show contact details with icons
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            title: Row(
                              children: [
                                Icon(Icons.contact_page,
                                    color: Colors.blue[700]),
                                SizedBox(width: 8),
                                Text('Contact Details'),
                              ],
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[50],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.badge,
                                          color: Colors.blue[600], size: 20),
                                      SizedBox(width: 12),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Name',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey[600],
                                              ),
                                            ),
                                            Text(
                                              '${contact['name']}',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 12),
                                Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.green[50],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.phone_android,
                                          color: Colors.green[600], size: 20),
                                      SizedBox(width: 12),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Phone',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey[600],
                                              ),
                                            ),
                                            Text(
                                              '${contact['number']}',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Icon(Icons.copy,
                                          color: Colors.grey[400], size: 16),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton.icon(
                                onPressed: () => Navigator.pop(context),
                                icon: Icon(Icons.close),
                                label: Text('Close'),
                              ),
                            ],
                          ),
                        );
                      },
                      child: Cardview(
                          name: contact['name']!, number: contact['number']!),
                    ),
                  );
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        elevation: 6,
        child: Icon(Icons.person_add_alt_1, size: 28),
        onPressed: () async {
          final newContact = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Contact()),
          );
          if (newContact != null &&
              newContact is Map<String, dynamic> &&
              newContact.containsKey('name') &&
              newContact.containsKey('number')) {
            setState(() {
              contacts.add({
                'name': newContact['name'].toString(),
                'number': newContact['number'].toString(),
              });
            });
            // Show a snackbar to confirm the contact was added
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content:
                    Text('Contact "${newContact['name']}" added successfully!'),
                backgroundColor: Colors.green,
                duration: Duration(seconds: 2),
              ),
            );
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue[700],
        unselectedItemColor: Colors.grey[600],
        elevation: 8,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            activeIcon: Icon(Icons.info),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page_outlined),
            activeIcon: Icon(Icons.contact_page),
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
