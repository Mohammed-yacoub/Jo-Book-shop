import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jo_book_shop/backArrow.dart';
import 'package:jo_book_shop/background.dart';
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
  Timer.periodic(const Duration(seconds: 30), (_){
    if(imageNumber == 2) {
      setState(() {
        imageNumber = -1;
      });
    }
  nextImage(true);
  });
  super.initState();
  }




  int imageNumber = 0;

  Widget _listImages(int index, double W) {
    List<Widget> images = <Widget>[
      Image.asset(
        "assets/image/image_2_1.png",
        width: W,
      ),
      Image.asset(
        "assets/image/image_2_2.png",
        width: W,
      ),
      Image.asset(
        "assets/image/image_2_3.png",
        width: W,
      )
    ];
    return images[index];
  }

  void nextImage(bool add) {
    setState(() {

        if (add &&  imageNumber < 2) {
          imageNumber++;
        }
        else if (!add && imageNumber > 0){
          imageNumber--;
        }

    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: double.infinity,
          color: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 10.0,
                child: Column(
                  children: [
                    const Search(),
                    SizedBox(
                      height: size.height * 0.013,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: size.width,
                        ),
                        _listImages(imageNumber, size.width + 1),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
