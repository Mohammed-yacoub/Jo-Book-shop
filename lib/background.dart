import 'package:flutter/material.dart';
import 'package:jo_book_shop/textEnhanced.dart';

class Background extends StatelessWidget {
  final Widget child;


  const Background({Key? key, this.child = const Text("No Widget")}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: double.infinity,
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Image.asset("assets/image/image_1.png"),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset("assets/image/image_2.png"),
          ),

          child,
        ],
      ),
    );
  }
}
