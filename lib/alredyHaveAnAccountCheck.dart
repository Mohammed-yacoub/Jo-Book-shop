import 'package:flutter/material.dart';
import 'package:jo_book_shop/logInPage.dart';
import 'package:jo_book_shop/textEnhanced.dart';

import 'SignInPage.dart';
import 'constants.dart';

class AlredyHaveAnAccountCheck extends StatelessWidget {
  final bool logIn;

  const AlredyHaveAnAccountCheck ({Key? key, required this.logIn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: (size.width * 0.075),
      ),
      child: Row(
        children: [
          TextEnhanced(
            text: logIn ? "already have an account?" : "Haven’t account yet??",
            size: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return logIn ? LogInPage() : SignInPage();
                  },
                ),
              );
            },
            child: TextEnhanced(
              color: primaryColor,
              fontFamily: "Montserrat-Bold",
              weight: FontWeight.w700,
              text: logIn ?  "  SIGN IN" : "  SIGN UP",
              size: 18,
            ),
          )
        ],
      ),
    );
  }
}
