import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:jo_book_shop/textEnhanced.dart';

import 'constants.dart';

class FormFieldEnhanced extends StatelessWidget {
  final bool safe;
  final String text;

  const FormFieldEnhanced({Key? key, this.safe = false, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.85,
      height: size.height * 0.07,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(42),
        border: Border.all(color: primaryBorderColor, width: 1.0),
      ),
      child: TextFormField(
        obscureText: safe,
        decoration: InputDecoration(
          border: InputBorder.none,
          label: TextEnhanced(
            text: text,
            size: 17,
            color: primaryGrayColor,
            weight: FontWeight.w500,
            fontFamily: "Montserrat-Medium",

          ),
        ),
      ),
    );
  }
}
