import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List images = [
    "assets/Banner1.jpg",
    "assets/Banner2.jpg",
    "assets/Banner3.jpg",
  ];

  final List promotions = [
    "assets/Promotion1.jpg",
    "assets/Promotion2.jpg",
    "assets/Promotion1.jpg",
  ];

  int _currentIndex = 0;

  final CarouselController controller = CarouselController();

  Widget buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: images.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () {
            controller.jumpToPage(entry.key);
            setState(() {
              _currentIndex = entry.key;
            });
          },
          child: Container(
            height: 10,
            width: 10,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  _currentIndex == entry.key ? Color(0xFF146ABE) : Colors.white,
            ),
          ),
        );
      }).toList(),
    );
  }

  List category = [
    "Cars",
    "House",
    "Electronics",
    "Jobs",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deliver to",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.redAccent,
                          ),
                          Text(
                            "New York, USA",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.redAccent,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("assets/profile.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                            ),
                            color: Colors.redAccent,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
