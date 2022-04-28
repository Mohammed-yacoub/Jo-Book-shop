import 'package:flutter/material.dart';
import 'package:jo_book_shop/textEnhanced.dart';

import 'constants.dart';
import 'logInPage.dart';


class Button extends StatelessWidget {
  final Widget whereTo;
  final String text;

  const Button({Key? key, this.text = "", required this.whereTo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
    width: size.width *0.85,
    child: ClipRRect(
    borderRadius: BorderRadius.circular(42),
    child: FlatButton(
    padding: EdgeInsets.symmetric(vertical: size.height * 0.018),
    color: primaryColor,
    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return whereTo ;},),);},
    child: TextEnhanced(
      fontFamily: "Montserrat-Bold",
    color: Colors.white,
    text: text,
    weight: FontWeight.w700,
    size: 18.0,
    ),
    ),
    ),
);
  }
}


