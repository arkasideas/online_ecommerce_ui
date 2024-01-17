import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_ecommerce_ui/screens/product_screen.dart';

class ProductWidgets extends StatelessWidget {
  List itemTitle = [
    "Black flat screen TV",
    "Mobile Phones Fingerprint Vivo",
    "New Car for Sell",
    "Bicycles for daily life",
  ];

  List itemsImages = [
    "LCD.png",
    "Smartphone.png",
    "Cars.png",
    "Bicycles.png",
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double itemWidth = (screenWidth - 40) / 2;

    return SingleChildScrollView(
      child: Container(
        height: 240,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            for (int index = 0; index < itemTitle.length; index++)
              Container(
                width: itemWidth,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductScreen(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/${itemsImages[index]}",
                          // height: itemWidth * 0.75,
                          height: itemWidth * 0.5,
                        ),
                      ),
                    ),
                    Text(
                      itemTitle[index],
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 12),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$10",
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0xFF146ABE),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            CupertinoIcons.add,
                            color: Color(0xFF146ABE),
                            size: 26,
                          ),
                        ],
                      ),
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
