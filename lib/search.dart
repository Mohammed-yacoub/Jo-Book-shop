import 'package:flutter/material.dart';
import 'package:jo_book_shop/constants.dart';
import 'package:jo_book_shop/textEnhanced.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.045,
      width: size.width * 0.93,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(42),
        border: Border.all(color: primaryBorderColor, width: 1.0),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          border: InputBorder.none,
          icon: Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Icon(
              Icons.search_sharp,
              size: 28,
              color: primaryColor,
            ),
          ),
          label: TextEnhanced(
            text: "Search Book Shop",
            size: 15,
            color: primaryGrayColor,
          ),
        ),
      ),
    );
  }
}
