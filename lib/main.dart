// import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_draganddropimplementation/screens/mainpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MaterialApp app=MaterialApp()
    // return app()
    return const MaterialApp(
      home: mainpg(),
      debugShowCheckedModeBanner: false,
    );
  }
}
