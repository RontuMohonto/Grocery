import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({super.key, required this.name, });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        // child: Text(
        //   "Login",
        //   style: TextStyle(
        //     fontSize: 18,
        //     fontWeight: FontWeight.w600,
        //     color: Colors.white,
        //   ),
        // ),
        child: Text(name,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white),),
      ),
      height: 50,
      width: 396,
      decoration: BoxDecoration(
        color: Color(0xff55AB60),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
