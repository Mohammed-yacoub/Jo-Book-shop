import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jo_book_shop/+-button.dart';
import 'package:jo_book_shop/background.dart';
import 'package:jo_book_shop/bookInCart.dart';
import 'package:jo_book_shop/constants.dart';
import 'package:jo_book_shop/libraryName.dart';
import 'package:jo_book_shop/search.dart';
import 'package:jo_book_shop/textEnhanced.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    double H = MediaQuery.of(context).size.height;
    double W = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Background(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, H * 0.01, 0, H * 0.04),
                child: const Search(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const LibraryName(name: "Lesser Amman Library"),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, H * 0.023),
                      child: const BookInCart(
                          imageURL: "assets/image/book_1.jpg",
                          bookName: "SIN EATER",
                          bookPrice: "35 JOD")),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, H * 0.023),
                    child: const BookInCart(
                        imageURL: "assets/image/book_2.jpg",
                        bookName: "THE KING OF DRUGS",
                        bookPrice: "50 JOD"),
                  ),
                  Divider(
                    color: primaryBorderColor,
                    thickness: 2,
                    indent: W*0.2,
                    height: H * 0.04,
                    endIndent: W*0.2,
                  ),
                  const LibraryName(name: "Jordan University Library"),


                    BookInCart(
                        imageURL: "assets/image/book_2.jpg",
                        bookName: "THE KING OF DRUGS",
                        bookPrice: "50 JOD"),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
