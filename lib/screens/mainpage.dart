import 'package:flutter/material.dart';

class mainpg extends StatelessWidget {
  const mainpg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                    "Scroll and select your item and then Drag it to you cart Answer",
                    style: TextStyle(
                        color: Color.fromARGB(255, 7, 118, 230),
                        fontSize: 25,
                        fontWeight: FontWeight.w800)),
                Expanded(
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                          width: 130,
                          height: 130,
                          child: Image.asset("assets/images/tomato.png")),
                      Container(
                          width: 140,
                          height: 140,
                          child: Image.asset("assets/images/carrot.png")),
                      Container(
                          width: 150,
                          height: 150,
                          child: Image.asset("assets/images/chicken.png")),
                      Container(
                          width: 150,
                          height: 150,
                          child: Image.asset("assets/images/bread.png"))
                    ],
                  ),
                ),
              ],
            ),
          ) // Foreground widget here
          ),
    );
  }
}
