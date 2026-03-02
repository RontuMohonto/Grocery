import 'package:flutter/material.dart';

class home extends StatefulWidget {
  home({super.key});

  @override
  State<home> createState() => _homeState();

  List<String> categories = ["Groecries", "Vegetables", "Fruits", "Beverages"];
  List<String> img = [
    "assets/images/groceries.jpg",
    "assets/images/Vegetables.jpg",
    "assets/images/fruits.jpg",
    "assets/images/Beverages.jpg",
  ];
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
            height: 175,
            child: ListView.builder(
              itemCount: widget.categories.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    width: 90,
                    decoration: BoxDecoration(
                      //color: Color(0xffF2FCF4),
                      color: Color(0xff55AB60),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      //background box
                      children: [
                        Container(
                          height: 105,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            //color: Color(0xffF2FCF4),
                            color: Colors.white,
                          ),
                          child: Image(image: AssetImage(widget.img[index])),
                        ),
                        //Hint text
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 192,
                      width: 162,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF2FCF4)
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            left: 1,
                            child: Container(
                              color: Color(0xff54A95F),
                              child: Image(
                                image: AssetImage("assets/images/tag.jpg"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
//other boxes
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 192,
                      width: 162,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            left: 1,
                            child: Container(
                              color: Color(0xff54A95F),
                              child: Image(
                                image: AssetImage("assets/images/tag.jpg"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 192,
                      width: 162,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            left: 1,
                            child: Container(
                              color: Color(0xff54A95F),
                              child: Image(
                                image: AssetImage("assets/images/tag.jpg"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),                  ],
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}
