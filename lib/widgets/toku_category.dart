import 'package:flutter/material.dart';
import 'package:language_learning/models/toku.dart';

class NumberCategory extends StatelessWidget {
  const NumberCategory(
      {super.key, required this.category, required this.color});
  final Toku category;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      color: color,
      child: Row(
        children: [
          Container(
              color: Colors.brown.shade50, child: Image.asset(category.image!)),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.japName,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  category.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                category.playSound();
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 32,
              ))
        ],
      ),
    );
  }
}
