import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jo_book_shop/background.dart';
import 'package:jo_book_shop/textEnhanced.dart';

import 'alredyHaveAnAccountCheck.dart';
import 'backArrow.dart';
import 'buttonEnhanced.dart';
import 'constants.dart';
import 'formFieldEnhanced.dart';
import 'homePage.dart';

class SignInPage extends StatelessWidget {

  const SignInPage({Key? key}) : super(key: key);

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
                  SvgPicture.asset('assets/image_svg/signin_pic.svg',
                      width: size.width * 0.6),
                  SizedBox(height: size.height * 0.06),
                  const FormFieldEnhanced(text: "Email address"),
                  SizedBox(height: size.height * 0.02),
                  const FormFieldEnhanced(text: "User name"),
                  SizedBox(height: size.height * 0.02),
                  const FormFieldEnhanced(text: "Password"),
                  SizedBox(height: size.height * 0.03),
                  const Button(
                    text: "SIGN UP",
                    whereTo: HomePage(),
                  ),
                  SizedBox(height: size.height * 0.025),
                  const AlredyHaveAnAccountCheck(logIn: true),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
