import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:grocery_demo/views/Registration/reg.dart';
import 'package:grocery_demo/widgets/button_widget.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          // Top Image
          Center(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/login.jpg"),
                ),
              ),
            ),
          ),

          SizedBox(height: 30),

          // Login Title
          Text(
            "Login",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xff55AB60),
            ),
          ),

          SizedBox(height: 25),

          // Email
          Text(
            "Email id",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter your email id",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          SizedBox(height: 20),

          // Password
          Text(
            "Password",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter your password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          SizedBox(height: 25),

          // Login Button
          SizedBox(
            width: double.infinity,
            child: button(name: 'Login'),
          ),

          SizedBox(height: 25),

          // Divider
          Row(
            children: [
              Expanded(child: Divider(color: Color(0xff858FAD))),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Or continue with',
                  style: TextStyle(fontSize: 14, color: Color(0xff858FAD)),
                ),
              ),
              Expanded(child: Divider(color: Color(0xff858FAD))),
            ],
          ),

          SizedBox(height: 20),

          // Google + Facebook
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xff55AB60)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/google.jpg", height: 22),
                      SizedBox(width: 8),
                      Text(
                        "Google",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff626262),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xff55AB60)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/fb.jpg", height: 22),
                      SizedBox(width: 8),
                      Text(
                        "Facebook",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff626262),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 20),

          // Bottom Text
          Center(
            child: Text(
              "Already Have an Account? Login",
              style: TextStyle(fontSize: 16, color: Color(0xff858FAD)),
            ),
          ),
        ],
      ),
    );
  }
}
