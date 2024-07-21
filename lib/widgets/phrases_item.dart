import 'package:flutter/material.dart';
import 'package:language_learning/models/toku.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.category});
  final Toku category;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        children: [
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
                  style: const TextStyle(color: Colors.black, fontSize: 16),
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
