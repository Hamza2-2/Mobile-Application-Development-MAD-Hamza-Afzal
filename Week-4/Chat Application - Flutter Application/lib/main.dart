import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final messages = [
      {"text": "Hi Panda", "isMe": false},
      {"text": "Hi Ali!", "isMe": true},
      {"text": "What are we going to make today", "isMe": false},
      {"text": "We are making a Chatpata Chat application", "isMe": true},
      {"text": "What is this application going to do?", "isMe": false},
      {"text": "It'll simulate the UI of a chat application", "isMe": true},
      {"text": "That sounds Jord Level!", "isMe": false},
      {"text": "But how are we going to make it?", "isMe": false},
      {"text": "Im'ma make/use ListView, Container, Align", "isMe": true},
      {"text": "Come Panda", "isMe": false},
      {"text": "Just Come on", "isMe": false},
      {"text": "U r a Jord", "isMe": false},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Chat",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return ChatBubble(
            text: messages[index]['text'] as String,
            isMe: messages[index]['isMe'] as bool,
          );
        },
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isMe;

  const ChatBubble({super.key, required this.text, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: isMe ? Colors.blue : Colors.grey[300],
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(15),
            topRight: const Radius.circular(15),
            bottomLeft: isMe ? const Radius.circular(15) : Radius.zero,
            bottomRight: isMe ? Radius.zero : const Radius.circular(15),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isMe ? Colors.white : Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
