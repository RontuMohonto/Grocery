import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(title: Text("splash")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Image.asset("assets/images/splash.jpg"),
        ),
      ),
    );
  }
}
