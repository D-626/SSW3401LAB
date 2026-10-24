import 'package:flutter/material.dart';

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
        // Main page layout: enable scrolling and center the content
        body: const SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 30.0), // Top margin
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
      mainAxisSize: MainAxisSize.min, // Wrap content instead of filling screen
      crossAxisAlignment: CrossAxisAlignment.center, // Center items horizontally
      children: [
        // 1. Main Avatar
        ClipOval(
          child: Image.asset(
            'assets/images/profile.jpg',
            width: 200, 
            height: 200,
            fit: BoxFit.cover, // Prevent distortion
          ),
        ),
        const SizedBox(height: 10), 

        // 2. Name
        const Text(
          "Nai Long", 
          style: TextStyle(
            fontSize: 30, 
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10), 

        // 3. Student Tag
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

        // 4. Bottom Cards Row
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
              // ================= Card 1 =================
              Container(
                padding: const EdgeInsets.all(16), // Card inner padding
                decoration: const BoxDecoration(
                  color: Colors.yellowAccent, 
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align content to left
                  children: [
                    Image.asset(
                      'assets/images/profile2.jpg', 
                      width: 38, 
                    ),
                    const SizedBox(height: 10),
                    const Text("hehe"), 
                    const SizedBox(height: 10), 
                    const Text("hehe"), 
                  ],
                ),
              ),

              // ================= Card 2 =================
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.yellowAccent,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/profile2.jpg',
                      width: 38,
                    ),
                    const SizedBox(height: 10),
                    const Text("hehe"),
                    const SizedBox(height: 10),
                    const Text("hehe"),
                  ],
                ),
              ),

              // ================= Card 3 (Purple) =================
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(color: Colors.purpleAccent), 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/profile2.jpg',
                      width: 50, 
                    ),
                    const SizedBox(height: 10),
                    const Text("hehe"),
                    const SizedBox(height: 10),
                    const Text("hehe"),
                  ],
                ),
              ),

              // ================= Card 4 =================
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(color: Colors.yellowAccent),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/profile2.jpg',
                      width: 50, 
                    ),
                    const SizedBox(height: 10),
                    const Text("hehe"),
                    const SizedBox(height: 10),
                    const Text("hehe"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}