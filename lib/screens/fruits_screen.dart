import 'package:flutter/material.dart';
import 'package:quick_starter/list/list.dart';

class FruitsMainScreen extends StatefulWidget {
  const FruitsMainScreen({
    super.key,
  });

  @override
  State<FruitsMainScreen> createState() => _FruitsMainScreenState();
}

class _FruitsMainScreenState extends State<FruitsMainScreen> {
  List<Map<String, dynamic>> fruitsList = ListOfItems().fruits;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade600,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/shopping.png",
              height: 25,
              width: 25,
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              "List of Fruits",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 80),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: fruitsList.length,
          itemBuilder: (context, index) {
            String name = fruitsList[index]["name"]!;
            Color color = fruitsList[index]["color"]!;
            String image = fruitsList[index]["image"]!;
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  name,
                  style: TextStyle(
                    color: color,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
