import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jo_book_shop/backArrow.dart';
import 'package:jo_book_shop/background.dart';
import 'package:jo_book_shop/textEnhanced.dart';

import 'constants.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double H = MediaQuery.of(context).size.height;
    double W = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Background(
          child: Padding(
            padding: EdgeInsets.only(left: W*0.03),
            child: Column(
              children: [
                Row(
                    children : [Padding(
                        padding: EdgeInsets.only(top: H*0.02, left: W*0.03,bottom: H*0.01),
                        child: const BackArrow())
                    ]
                    ),
                Padding(
                  padding: EdgeInsets.only(bottom: H*0.01),
                  child: Row(
                    children: [
                      const TextEnhanced(text: "PRODUCT", size: 18),
                      Padding(padding: EdgeInsets.only(left: W*0.24,right: W*0.05),child: const TextEnhanced(text: "PRICE", size: 18)),
                      const TextEnhanced(text: "QUANTITY", size: 18),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, W * 0.01, 0),
                      width: W * 0.2,
                      height: H * 0.15,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/image/book_1.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: primaryGrayColor,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ]),
                    ),
                    /*Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        TextEnhanced(text: "book name",size: 15,color: primaryColor,weight: FontWeight.w700,fontFamily: "Montserrat-Bold",),
                        TextEnhanced(text: "book auther",size: 13,color: primaryColor,weight: FontWeight.w500,fontFamily: "Montserrat-Medium",)
                      ],
                    ),*/
                    TextEnhanced(text : "23 JOD", color: primaryColor,fontFamily: "Montserrat-Bold",size: 16,weight: FontWeight.w700),
                    TextEnhanced(text : "1", color: primaryColor,fontFamily: "Montserrat-Bold",size: 18,weight: FontWeight.w700)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
