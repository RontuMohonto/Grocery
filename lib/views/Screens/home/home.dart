import 'package:flutter/material.dart';

class home extends StatefulWidget {
    home({super.key});

  @override
  State<home> createState() => _homeState();

  List<String> categories = ["Groecries", "Vegetables", "Fruits", "Beverages"];
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image(image: AssetImage("assets/images/Appbar.jpg"))],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 154,
            width: double.infinity,
            child: Image(image: AssetImage("assets/images/slider.jpg")),
          ),
         // categories
          SizedBox(
            height: 125,
            child: ListView.builder(

                itemCount: 5,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  margin: EdgeInsets.only(right: 15),
                  height: 50,
                  width: 87,
                  color: Colors.red,
                ),
              );
            }),
          )
        ],
      )
    );
  }
}
