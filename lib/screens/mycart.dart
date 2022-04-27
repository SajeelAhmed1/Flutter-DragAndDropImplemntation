import 'package:flutter/material.dart';
import 'package:flutter_draganddropimplementation/screens/cardlist.dart';
import 'package:flutter_draganddropimplementation/screens/mainpage.dart';

class cartpage extends StatelessWidget {
  final List<dynamic> cart;
  const cartpage({Key? key, required this.cart}) : super(key: key);

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
            child: Column(
              children: [
                Image.asset("assets/images/cart.png"),
                Expanded(
            child: ListView.builder(
                itemCount: cart.length,
                itemBuilder: (BuildContext context, int index) {
                  return Cardd(text: cart[index]);
                }),
        
          ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => mainpg()),
                      );
                    },
                    child: const Text('Back To Items Page!'))
              ],
            )));
  }
}
