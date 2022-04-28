import 'package:flutter/material.dart';
import 'package:jo_book_shop/login.dart';
import 'package:jo_book_shop/splash%20screen.dart';

import 'mainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "JO_Book_shop",
      home: SplashScreen(),
    );
  }
}

