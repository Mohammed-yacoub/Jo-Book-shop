import 'package:flutter/material.dart';
import 'package:jo_book_shop/textEnhanced.dart';

import 'background.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Background(
          child: TextEnhanced(text: "Navigation Page",),
        ),
      ),
    );
  }
}
