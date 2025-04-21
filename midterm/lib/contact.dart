import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Contact"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Enter Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: numberController,
              decoration: const InputDecoration(
                labelText: "Enter Number",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final String name = nameController.text;
                final String number = numberController.text;

                if (name.isNotEmpty && number.isNotEmpty) {
                  Navigator.pop(context, {'name': name, 'number': number});
                }
              },
              child: const Text("Save Contact"),
            ),
          ],
        ),
      ),
    );
  }
}
