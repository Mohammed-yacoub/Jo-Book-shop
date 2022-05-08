import 'package:flutter/material.dart';

import 'constants.dart';

List<String> bookImages = <String>[
  "assets/image/book_1.jpg",
  "assets/image/book_2.jpg",
  "assets/image/book_3.jpeg",
];

class BookInListView extends StatelessWidget {
  final int bookNumber;

  const BookInListView({Key? key,required this.bookNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin:
      EdgeInsets.symmetric(horizontal: size.width * 0.035),
      width: size.width * 0.27,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(bookImages[bookNumber]),
            fit: BoxFit.fill,
          ),
          boxShadow: const [
            BoxShadow(
              color: primaryGrayColor,
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ]),
    );
  }
}
