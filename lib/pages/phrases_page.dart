import 'package:flutter/material.dart';
import 'package:language_learning/models/toku.dart';
import 'package:language_learning/widgets/phrases_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Toku> familyMembers = const [
    Toku(
        japName: "Kimasu ka?",
        enName: "Are You Coming?",
        sound: "sounds/phrases/are_you_coming.wav"),
    Toku(
      japName: "Kōdoku suru koto o \nwasurenaide kudasai!",
      enName: "Don't Forget To Subscribe!",
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
    ),
    Toku(
      japName: "Go kibun wa ikagadesu ka?",
      enName: "How Are You Feeling?",
      sound: "sounds/phrases/how_are_you_feeling.wav",
    ),
    Toku(
      japName: "Watashi wa anime ga daisukidesu",
      enName: "I Love Anime",
      sound: "sounds/phrases/i_love_anime.wav",
    ),
    Toku(
      japName: "Puroguramingu ga daisuki",
      enName: "I Love Programming",
      sound: "sounds/phrases/i_love_programming.wav",
    ),
    Toku(
      japName: "Puroguramingu wa kantandesu",
      enName: "Programming Is Easy",
      sound: "sounds/phrases/programming_is_easy.wav",
    ),
    Toku(
      japName: "Anata no namae wa nanidesu ka?",
      enName: "What Is Your Name?",
      sound: "sounds/phrases/what_is_your_name.wav",
    ),
    Toku(
      japName: "Doko ni iku no?",
      enName: "Where Are You Going?",
      sound: "sounds/phrases/where_are_you_going.wav",
    ),
    Toku(
      japName: "Hai, ikimasu",
      enName: "Yes, I'm Coming",
      sound: "sounds/phrases/yes_im_coming.wav",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text(
            'Phrases',
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
            itemCount: familyMembers.length,
            itemBuilder: (context, index) {
              return PhrasesItem(
                category: familyMembers[index],
              );
            }));
  }
}
