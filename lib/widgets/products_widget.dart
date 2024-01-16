import 'package:flutter/material.dart';

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
                      onTap: () {},
                      child: Container(alignment: Alignment.center, child: Image.asset("assets/${itemsImages[index]}"),),
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
