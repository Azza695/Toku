import 'package:flutter/material.dart';
import 'package:language_learning/models/toku.dart';
import 'package:language_learning/widgets/toku_category.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Toku> numbers = const [
    Toku(
        image: "assets/images/numbers/number_one.png",
        japName: "1Tsu",
        enName: "One",
        sound: "sounds/numbers/number_one_sound.mp3"),
    Toku(
      image: "assets/images/numbers/number_two.png",
      japName: "Ni",
      enName: "Two",
      sound: "sounds/numbers/number_two_sound.mp3",
    ),
    Toku(
      image: "assets/images/numbers/number_three.png",
      japName: "San",
      enName: "Three",
      sound: "sounds/numbers/number_three_sound.mp3",
    ),
    Toku(
      image: "assets/images/numbers/number_four.png",
      japName: "Shi",
      enName: "Four",
      sound: "sounds/numbers/number_four_sound.mp3",
    ),
    Toku(
      image: "assets/images/numbers/number_five.png",
      japName: "Go",
      enName: "Five",
      sound: "sounds/numbers/number_five_sound.mp3",
    ),
    Toku(
      image: "assets/images/numbers/number_six.png",
      japName: "Roku",
      enName: "Six",
      sound: "sounds/numbers/number_six_sound.mp3",
    ),
    Toku(
      image: "assets/images/numbers/number_seven.png",
      japName: "Sebun",
      enName: "Seven",
      sound: "sounds/numbers/number_seven_sound.mp3",
    ),
    Toku(
      image: "assets/images/numbers/number_eight.png",
      japName: "Hachi",
      enName: "Eight",
      sound: "sounds/numbers/number_eight_sound.mp3",
    ),
    Toku(
      image: "assets/images/numbers/number_nine.png",
      japName: "Kyū",
      enName: "Nine",
      sound: "sounds/numbers/number_nine_sound.mp3",
    ),
    Toku(
      image: "assets/images/numbers/number_ten.png",
      japName: "Jū",
      enName: "Ten",
      sound: "sounds/numbers/number_ten_sound.mp3",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text(
            'Numbers',
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
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return NumberCategory(
                category: numbers[index],
                color: Colors.orangeAccent,
              );
            }));
  }
  /*List <Widget> getList(List<Numbers> numbers){ // the first way
    List <Widget> itemList=[];
    for(int i =0 ; i<numbers.length;i++){
      itemList.add(NumberCategory(number: numbers[i]));
    }
    return itemList;
  }*/
}
