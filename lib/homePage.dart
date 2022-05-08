import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jo_book_shop/backArrow.dart';
import 'package:jo_book_shop/background.dart';
import 'package:jo_book_shop/bookInListView.dart';
import 'package:jo_book_shop/constants.dart';
import 'package:jo_book_shop/search.dart';
import 'package:jo_book_shop/textEnhanced.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 30), (_) {
      if (imageNumber == 2) {
        setState(() {
          imageNumber = -1;
        });
      }
      nextImage(true);
    });
    super.initState();
  }

  int imageNumber = 0;

  List<String> images = <String>[
    "assets/image/image_2_1.png",
    "assets/image/image_2_2.png",
    "assets/image/image_2_3.png",
  ];

  void nextImage(bool add) {
    setState(() {
      if (add && imageNumber < 2) {
        imageNumber++;
      } else if (!add && imageNumber > 0) {
        imageNumber--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Search(),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: size.height * 0.3,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage(images[imageNumber]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  child: GestureDetector(
                    onTap: () {
                      nextImage(false);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_sharp,
                      color: Colors.white60,
                      size: 25,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      nextImage(true);
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.white60,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Padding(
                padding: EdgeInsets.only(left: size.width * 0.05),
                child: const TextEnhanced(
                  text: "Bestsellers",
                  color: primaryColor,
                  weight: FontWeight.w500,
                  size: 18,
                )),
            SizedBox(
              height: size.height * 0.26,
              child: ListView(
                padding: EdgeInsets.only(
                    left: size.width * 0.02,
                    top: size.height * 0.01,
                    bottom: size.height * 0.05),
                scrollDirection: Axis.horizontal,
                children: const [
                  BookInListView(bookNumber: 0),
                  BookInListView(bookNumber: 1),
                  BookInListView(bookNumber: 2),
                  BookInListView(bookNumber: 0),
                  BookInListView(bookNumber: 1),
                  BookInListView(bookNumber: 2),
                  BookInListView(bookNumber: 0),
                  BookInListView(bookNumber: 1),
                  BookInListView(bookNumber: 2),
                  BookInListView(bookNumber: 0),
                  BookInListView(bookNumber: 1),
                  BookInListView(bookNumber: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
