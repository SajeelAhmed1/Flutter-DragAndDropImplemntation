import 'package:flutter/material.dart';

class Cardd extends StatelessWidget {
  // final List<dynamic> score;
  final text;
  // const Cardd({Key? key, required this.score,required this.text}) : super(key: key);

  const Cardd({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget X = Image.asset(
      "assets/images/xvec.png",
    );
    Widget O = Image.asset(
      "assets/images/ovec.png",
    );
    pic(text) {
      if (text == 1) {
        return (O);
      } else {
        return (X);
      }
    }

    return Container(
      padding: EdgeInsets.all(10),
      height: 90,
      width: 30,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
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
              "Player ${text}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
          ),
          Image.asset(
            "assets/images/trophy.png",
            width: 50,
            height: 100,
          )
        ]),
      ),
    );
  }
}
