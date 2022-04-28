import 'package:flutter/material.dart';
import 'package:jo_book_shop/constants.dart';


class TextEnhanced extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight weight;
  final Color color;
  final String fontFamily;

  const TextEnhanced(
      {Key? key, this.text = "", this.size = 22, this.weight = FontWeight.w400, this.color = primaryGrayColor, this.fontFamily = "Montserrat"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: weight,
          letterSpacing: 0.8,
          fontFamily: fontFamily,
          ),
    );
  }
}