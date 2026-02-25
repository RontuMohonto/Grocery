import 'dart:math';

import 'package:flutter/material.dart';
import 'package:grocery_demo/tttttttttttttt.dart';
import 'package:grocery_demo/views/Auth/Registration/reg.dart';
import 'package:grocery_demo/views/Screens/home/home.dart';
import 'package:grocery_demo/views/splash.dart';
void main (){
  runApp( const Myapp());
}


class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}
