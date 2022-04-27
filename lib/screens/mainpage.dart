import 'package:flutter/material.dart';

class mainpg extends StatelessWidget {
  const mainpg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/alogo.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("hello hahaha"),
          ],
        ) // Foreground widget here
        );
  }
}
