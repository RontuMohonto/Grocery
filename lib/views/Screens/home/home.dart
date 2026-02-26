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
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: 154,
              width: double.infinity,
              child: Image(image: AssetImage("assets/images/slider.jpg")),
            ),
          ),
          // categories
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: widget.categories.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    margin: EdgeInsets.only(right: 3, top: 8),
                    width: 90,
                    decoration: BoxDecoration(
                      //color: Color(0xffF2FCF4),
                      color: Color(0xff55AB60),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            color: Color(0xffF2FCF4),
                          ),
                          child: Image(image: AssetImage("assets/images/groceries.jpg")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text(
                            widget.categories[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
