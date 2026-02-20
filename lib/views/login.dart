import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image(image: AssetImage("assets/images/Appbar.jpg"))],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/login.jpg"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Login text
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff55AB60),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Email id",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
