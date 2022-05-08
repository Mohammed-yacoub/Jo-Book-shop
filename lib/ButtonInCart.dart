import 'package:flutter/material.dart';
import 'package:jo_book_shop/checkoutPage.dart';
import 'package:jo_book_shop/textEnhanced.dart';

import 'constants.dart';

class ButtonInCart extends StatelessWidget {
  const ButtonInCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double H = MediaQuery.of(context).size.height;
    double W = MediaQuery.of(context).size.width;

    return SizedBox(
      height: H * 0.05,
      width: W *0.85,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FlatButton(
          color: primaryColor,
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const CheckoutPage()));},
          child: const TextEnhanced(
            fontFamily: "Montserrat",
            color: Colors.white,
            text: "place order",
            weight: FontWeight.w500,
            size: 20.0,
          ),
        ),
      ),
    );
  }
}
