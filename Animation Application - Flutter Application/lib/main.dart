import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FoodApp(),
  ));
}

class Item {
  String name;
  String description;
  String image;
  bool isLiked;
  bool isAnimating;

  Item({
    required this.name,
    required this.description,
    required this.image,
    this.isLiked = false,
    this.isAnimating = false,
  });
}

class FoodApp extends StatefulWidget {
  const FoodApp({super.key});

  @override
  State<FoodApp> createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  bool showSplash = true;
  List<Item> foodItems = [
    Item(
      name: "Pizza",
      description: "Cheesy pizza with pepperoni",
      image: "assets/pizza.jpeg",
      isLiked: false,
      isAnimating: false,
    ),
    Item(
      name: "Burger",
      description: "Beef burger with lettuce",
      image: "assets/burger.jpeg",
      isLiked: false,
      isAnimating: false,
    ),
    Item(
      name: "Fries",
      description: "Crispy golden fries",
      image: "assets/fries.jpeg",
      isLiked: false,
      isAnimating: false,
    ),
  ];

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      setState(() {
        showSplash = false;
      });
    });
  }

  void Like(int index) {
    setState(() {
      foodItems[index].isLiked = !foodItems[index].isLiked;
      foodItems[index].isAnimating = true;
    });

    Timer(const Duration(milliseconds: 300), () {
      setState(() {
        foodItems[index].isAnimating = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSplash) {
      return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.redAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Image(
              image: AssetImage("assets/logo.png"),
              width: 200,
              height: 200,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("🍔 Food Items"),
        backgroundColor: Colors.redAccent,
        elevation: 4,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.grey.shade100,
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          var item = foodItems[index];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    item.image,
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        item.description,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onDoubleTap: () => Like(index),
                          child: AnimatedScale(
                            duration: const Duration(milliseconds: 200),
                            scale: item.isAnimating ? 1.5 : 1.0,
                            child: Icon(
                              Icons.favorite,
                              color: item.isLiked ? Colors.red : Colors.grey,
                              size: 28,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
