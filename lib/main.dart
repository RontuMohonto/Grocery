import 'package:flutter/material.dart';
import 'package:grocery_demo/views/login.dart';
import 'package:grocery_demo/views/splash.dart';
void main (){
  runApp(Myapp());
}


class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
