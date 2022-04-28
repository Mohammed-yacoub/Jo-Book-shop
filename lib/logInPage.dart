import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jo_book_shop/alredyHaveAnAccountCheck.dart';
import 'package:jo_book_shop/backArrow.dart';
import 'package:jo_book_shop/background.dart';
import 'package:jo_book_shop/buttonEnhanced.dart';
import 'package:jo_book_shop/constants.dart';
import 'package:jo_book_shop/formFieldEnhanced.dart';
import 'package:jo_book_shop/homePage.dart';
import 'package:jo_book_shop/textEnhanced.dart';

import 'SignInPage.dart';
import 'mainPage.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Background(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(width: size.width),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/image_svg/login_pic.svg', width: size.width * 0.6),
                  SizedBox(height: size.height * 0.06),
                  const FormFieldEnhanced(text: "Email address"),
                  SizedBox(height: size.height * 0.02),
                  const FormFieldEnhanced(text: "Password", safe: true),

                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: (size.width * 0.075) + 20,
                            vertical: 5.0,
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: const TextEnhanced(
                            text: "forget password?",
                            color: primaryGrayColor,
                            size: 14.0,
                          ),
                        ),
                      ),
                    ],
                  ),






                  SizedBox(height: size.height * 0.03),
                  const Button(
                    text: "SIGN IN",
                    whereTo: HomePage(),
                  ),
                  SizedBox(height: size.height * 0.025),

                  const AlredyHaveAnAccountCheck(logIn: false),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
