import 'package:flutter/material.dart';

class Cardd extends StatelessWidget {
  // final List<dynamic> score;
  final text;
  // const Cardd({Key? key, required this.score,required this.text}) : super(key: key);

  const Cardd({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tomo = Image.asset(
      "assets/images/tomato.png",
    );
    final milk = Image.asset(
      "assets/images/milk.png",
    );

    final chick = Image.asset(
      "assets/images/chicken.png",
    );
    final eggs = Image.asset(
      "assets/images/eggs.png",
    );
    final wheat = Image.asset(
      "assets/images/wheat.png",
    );
    final carrot = Image.asset(
      "assets/images/carrot.png",
    );
    pic(text) {
      if (text == "Tomato") {
        return (tomo);
      } else if (text == "Eggs") {
        return (eggs);
      } else if (text == "Wheat") {
        return (wheat);
      } else if (text == "Chicken") {
        return (chick);
      } else if (text == "Carrot") {
        return (carrot);
      } else if (text == "Milk") {
        return (milk);
      }
    }

    return Container(
      padding: EdgeInsets.all(10),
      height: 70,
      width: 10,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 157, 214, 118),
        borderRadius: BorderRadius.circular(13),
      ),
      // decoration: const BoxDecoration(color: Color.fromARGB(255, 230, 65, 65)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          pic(text),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 95),
            child: Text(
              " ${text}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
          ),
          
        ]),
      ),
    );
  }
}
