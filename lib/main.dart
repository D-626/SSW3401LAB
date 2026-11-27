import 'package:flutter/material.dart';
import 'block.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void doSomething() {
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
        body: const SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: ProfileHeader(),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipOval(
          child: Image.asset(
            'assets/images/profile.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),

        const Text(
          "Nai Long",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(88.888),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.school, size: 17, color: Colors.yellow),
              SizedBox(width: 4),
              Text("Student", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        const SizedBox(height: 40),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Block(
                "hehe", 
                "assets/images/profile2.jpg", 
                colour: Colors.yellowAccent, 
                imageWidth: 38,
              ),

              Block(
                "hehe", 
                "assets/images/profile2.jpg", 
                colour: Colors.yellowAccent, 
                imageWidth: 38,
              ),

              Block(
                "hehe", 
                "assets/images/profile2.jpg", 
                colour: Colors.purpleAccent,
              ),

              Block(
                "hehe", 
                "assets/images/profile2.jpg", 
                colour: Colors.yellowAccent,
              ),
            ],
          ),
        ),
      ],
    );
  }
}