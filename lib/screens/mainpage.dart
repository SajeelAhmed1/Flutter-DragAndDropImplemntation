import 'package:flutter/material.dart';
import 'package:flutter_draganddropimplementation/screens/mycart.dart';

class mainpg extends StatefulWidget {
  const mainpg({Key? key}) : super(key: key);

  @override
  State<mainpg> createState() => _mainpgState();
}

class _mainpgState extends State<mainpg> {
  @override
  var cart = [];
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
            padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                    "Scroll and select your item and then Drag it to you cart !",
                    style: TextStyle(
                        color: Color.fromARGB(255, 2, 7, 11),
                        fontSize: 25,
                        fontWeight: FontWeight.w800)),
                SizedBox(
                  height: 55,
                ),
                Row(
                  children: [
                    Draggable<String>(
                      data: "tomato",
                      child: Container(
                          width: 130,
                          height: 130,
                          child: Image.asset("assets/images/tomato.png")),
                      feedback: Container(
                          width: 130,
                          height: 130,
                          child: Image.asset("assets/images/tomato.png")),
                      childWhenDragging: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  width: 5)),
                          child: Image.asset("assets/images/tomato.png")),
                    ),
                    Draggable<String>(
                      data: "carrot",
                      child: Container(
                          width: 130,
                          height: 130,
                          child: Image.asset("assets/images/carrot.png")),
                      feedback: Container(
                          width: 130,
                          height: 130,
                          child: Image.asset("assets/images/carrot.png")),
                      childWhenDragging: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  width: 5)),
                          child: Image.asset("assets/images/carrot.png")),
                    ),
                    Draggable<String>(
                      data: "chicken",
                      child: Container(
                          width: 112,
                          height: 130,
                          child: Image.asset("assets/images/chicken.png")),
                      feedback: Container(
                          width: 112,
                          height: 130,
                          child: Image.asset("assets/images/chicken.png")),
                      childWhenDragging: Container(
                          width: 112,
                          height: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  width: 5)),
                          child: Image.asset("assets/images/chicken.png")),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Draggable<String>(
                      data: "eggs",
                      child: Container(
                          width: 130,
                          height: 130,
                          child: Image.asset("assets/images/eggs.png")),
                      feedback: Container(
                          width: 130,
                          height: 130,
                          child: Image.asset("assets/images/eggs.png")),
                      childWhenDragging: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  width: 5)),
                          child: Image.asset("assets/images/eggs.png")),
                    ),
                    Draggable<String>(
                      data: "milk",
                      child: Container(
                          width: 130,
                          height: 130,
                          child: Image.asset("assets/images/milk.png")),
                      feedback: Container(
                          width: 130,
                          height: 130,
                          child: Image.asset("assets/images/milk.png")),
                      childWhenDragging: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  width: 5)),
                          child: Image.asset("assets/images/milk.png")),
                    ),
                    Draggable<String>(
                      data: "wheat",
                      child: Container(
                          width: 112,
                          height: 130,
                          child: Image.asset("assets/images/wheat.png")),
                      feedback: Container(
                          width: 112,
                          height: 130,
                          child: Image.asset("assets/images/wheat.png")),
                      childWhenDragging: Container(
                          width: 112,
                          height: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  width: 5)),
                          child: Image.asset("assets/images/wheat.png")),
                    ),
                  ],
                ),
                DragTarget<String>(
                    onAccept: (data) => setState(() => cart.add(data)),
                    builder: (context, _, __) => Container(
                        width: 200,
                        height: 200,
                        child: Image.asset("assets/images/cart.png"))),
                  ElevatedButton(onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  cartpage(cart:cart)),
                          );}, child: const Text('Show Cart'))
              ],
            ),
          ) // Foreground widget here
          ),
    );
  }
}
