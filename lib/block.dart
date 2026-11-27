import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  const Block(
    this.title, 
    this.imagePath, { 
    super.key,
    required this.colour, 
    this.imageWidth = 50, 
  });

  final String title;
  final String imagePath;
  final Color colour;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colour, 
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath, 
            width: imageWidth, 
          ),
          const SizedBox(height: 10),
          Text(title), 
          const SizedBox(height: 10),
          Text(title), 
        ],
      ),
    );
  }
}