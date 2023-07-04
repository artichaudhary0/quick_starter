import 'package:flutter/material.dart';
import 'package:quick_starter/list/list.dart';

class RedAndWhiteScreen extends StatelessWidget {
  const RedAndWhiteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> redandwhiteletters = ListOfItems().words;
    List<Map<String, dynamic>> fruitsList = ListOfItems().fruits;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Red And White",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: redandwhiteletters.length,
          itemBuilder: (context, index) {
            return buildVerticalWords(redandwhiteletters[index]);
          },
        ),
      ),
    );
  }

  Widget buildVerticalWords(Map<String, dynamic> wordData) {
    String word = wordData["word"];
    int highlightIndex = wordData["highlightIndex"];
    Color highlightColor = wordData["highlightColor"];
    Color regularColor = wordData["regularColor"];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        word.length,
            (index) => Text(
          word[index],
          style: TextStyle(
              color: index == highlightIndex ? highlightColor : regularColor,
              fontSize: index == highlightIndex ? 40 : 30),
        ),
      ),
    );
  }
}
