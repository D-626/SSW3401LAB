import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Declaring a function
  void doSomething(){
    print("Hello!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: doSomething,
            icon: const Icon(Icons.no_food),
          ),
          backgroundColor: Colors.blue,
          title: const Text("Profile"),
        ),
        body: const Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                backgroundColor: Colors.black12,
                radius: 100,
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}