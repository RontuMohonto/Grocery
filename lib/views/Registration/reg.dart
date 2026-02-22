import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:grocery_demo/widgets/button_widget.dart';

class reg extends StatefulWidget {
  const reg({super.key});

  @override
  State<reg> createState() => _regState();
}

class _regState extends State<reg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //Appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image(image: AssetImage("assets/images/Appbar.jpg"))],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          // Register
          Text(
            "Register",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xff55AB60),
            ),
          ),
          SizedBox(height: 20),

          // Name
          Text(
            "Your Name",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter your Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20),

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
              hintText: "Enter your Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20),

          // Confirm Password
          Text(
            "Confirm password",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: "Confirm your password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20),

          // Contact Number
          Text(
            "Contact Number",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter your Contact Number",
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

          // Google and Facebook
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
