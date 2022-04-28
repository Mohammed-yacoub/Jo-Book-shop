import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jo_book_shop/SignInPage.dart';
import 'package:jo_book_shop/background.dart';
import 'package:jo_book_shop/buttonEnhanced.dart';
import 'package:jo_book_shop/constants.dart';

import 'package:jo_book_shop/textEnhanced.dart';

import 'logInPage.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Background(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: size.height * 0.04,
                child: const TextEnhanced(
                  text: "sign in for the best experience",
                ),
              ),
              Positioned(
                top: size.height * 0.24,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/image_svg/login_signin_pic.svg',
                      width: size.width * 0.8,
                    ),
                    SizedBox(height: size.height * 0.1),
                    const Button(
                      text: "LOG IN",
                      whereTo: LogInPage(),
                    ),
                    SizedBox(height: size.height * 0.02),
                    const Button(
                      text: "SIGN IN",
                      whereTo: SignInPage(),
                    )
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
