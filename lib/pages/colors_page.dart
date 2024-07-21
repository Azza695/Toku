import 'package:flutter/material.dart';
import 'package:language_learning/models/toku.dart';
import 'package:language_learning/widgets/toku_category.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Toku> color = const [
    Toku(
        image: "assets/images/colors/color_black.png",
        japName: "Kuro",
        enName: "Black",
        sound: "sounds/colors/black.wav"),
    Toku(
      image: "assets/images/colors/color_brown.png",
      japName: "Chairo",
      enName: "Brown",
      sound: "sounds/colors/brown.wav",
    ),
    Toku(
      image: "assets/images/colors/color_gray.png",
      japName: "Gurē",
      enName: "Gray",
      sound: "sounds/colors/gray.wav",
    ),
    Toku(
      image: "assets/images/colors/color_green.png",
      japName: "Midori",
      enName: "Green",
      sound: "sounds/colors/green.wav",
    ),
    Toku(
      image: "assets/images/colors/color_red.png",
      japName: "Aka",
      enName: "Red",
      sound: "sounds/colors/red.wav",
    ),
    Toku(
      image: "assets/images/colors/color_white.png",
      japName: "Shiro",
      enName: "White",
      sound: "sounds/colors/white.wav",
    ),
    Toku(
      image: "assets/images/colors/yellow.png",
      japName: "Kiiro",
      enName: "Yellow",
      sound: "sounds/colors/yellow.wav",
    ),
    Toku(
      image: "assets/images/colors/color_dusty_yellow.png",
      japName: "Dasutiierō",
      enName: "Dusty Yellow",
      sound: "sounds/colors/dusty yellow.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text(
            'Colors',
            style: TextStyle(color: Colors.white),
          ),
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
        body: ListView.builder(
            // the better way like loop
            itemCount: color.length,
            itemBuilder: (context, index) {
              return NumberCategory(
                category: color[index],
                color: Colors.purple,
              );
            }));
  }
}
