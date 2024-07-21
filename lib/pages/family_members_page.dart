import 'package:flutter/material.dart';
import 'package:language_learning/models/toku.dart';
import 'package:language_learning/widgets/toku_category.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<Toku> familyMembers = const [
    Toku(
        image: "assets/images/family_members/family_father.png",
        japName: "Chichioya",
        enName: "Father",
        sound: "sounds/family_members/father.wav"),
    Toku(
      image: "assets/images/family_members/family_mother.png",
      japName: "Hahaoya",
      enName: "Mother",
      sound: "sounds/family_members/mother.wav",
    ),
    Toku(
      image: "assets/images/family_members/family_son.png",
      japName: "Musuko",
      enName: "Son",
      sound: "sounds/family_members/son.wav",
    ),
    Toku(
      image: "assets/images/family_members/family_daughter.png",
      japName: "Musume",
      enName: "Daughter",
      sound: "sounds/family_members/daughter.wav",
    ),
    Toku(
      image: "assets/images/family_members/family_older_brother.png",
      japName: "Nisan",
      enName: "Older Brother",
      sound: "sounds/family_members/older bother.wav",
    ),
    Toku(
      image: "assets/images/family_members/family_older_sister.png",
      japName: "Ane",
      enName: "Older Sister",
      sound: "sounds/family_members/older sister.wav",
    ),
    Toku(
      image: "assets/images/family_members/family_younger_brother.png",
      japName: "Otōto",
      enName: "Younger Brother",
      sound: "sounds/family_members/younger brohter.wav",
    ),
    Toku(
      image: "assets/images/family_members/family_younger_sister.png",
      japName: "Imōto",
      enName: "Younger Sister",
      sound: "sounds/family_members/younger sister.wav",
    ),
    Toku(
      image: "assets/images/family_members/family_grandfather.png",
      japName: "Sofu",
      enName: "Grandfather",
      sound: "sounds/family_members/grand father.wav",
    ),
    Toku(
      image: "assets/images/family_members/family_grandmother.png",
      japName: "Sobo",
      enName: "Grandmother",
      sound: "sounds/family_members/grand mother.wav",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text(
            'Family Members',
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
            itemCount: familyMembers.length,
            itemBuilder: (context, index) {
              return NumberCategory(
                category: familyMembers[index],
                color: Colors.green,
              );
            }));
  }
}
