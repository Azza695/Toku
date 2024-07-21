import 'package:flutter/material.dart';
import 'package:language_learning/pages/colors_page.dart';
import 'package:language_learning/pages/family_members_page.dart';
import 'package:language_learning/pages/numbers_page.dart';
import 'package:language_learning/pages/phrases_page.dart';
import 'package:language_learning/widgets/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        elevation: 10,
        title: const Text(
          "Toku",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: "Numbers",
            color: Colors.orangeAccent,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              })); // context define place of widget
            },
          ),
          Category(
            text: "Family Members",
            color: Colors.green,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMembersPage();
              })); // context define place of widget
            },
          ),
          Category(
            text: "Colors",
            color: Colors.purple,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              })); // context define place of widget
            },
          ),
          Category(
            text: "Phrases",
            color: Colors.blue,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              })); // context define place of widget
            },
          ),
        ],
      ),
    );
  }
}
