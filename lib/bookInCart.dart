import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jo_book_shop/cartPage.dart';
import 'package:jo_book_shop/textEnhanced.dart';

import '+-button.dart';
import 'cartList.dart';
import 'constants.dart';

class BookInCart extends StatefulWidget {
  final String imageURL;
  final String bookName;
  final String bookPrice;
  final int bookIndex;
  final int bookIndex_2;

  const BookInCart(
      {Key? key,
      required this.imageURL,
      required this.bookName,
      required this.bookPrice,
      required this.bookIndex,
      required this.bookIndex_2})
      : super(key: key);

  @override
  State<BookInCart> createState() => _BookInCartState();
}

class _BookInCartState extends State<BookInCart> {
  int x = 1;

  void _add() {
    setState(() {
      x++;
    });
  }

  void _subtract() {
    setState(() {
      if (x > 1) {
        x--;
      }
    });
  }

  void _remove() {
    cartList[widget.bookIndex]["bookDetails"].removeAt(widget.bookIndex_2);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CartPage()));

    if(cartList[widget.bookIndex]["bookDetails"].length == 0)
      {
        cartList.removeAt(widget.bookIndex);
      }
  }

  @override
  Widget build(BuildContext context) {
    double H = MediaQuery.of(context).size.height;
    double W = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, H * 0.023),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, W * 0.05, 0),
            width: W * 0.25,
            height: H * 0.2,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/${widget.imageURL}"),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, H * 0.004),
                child: TextEnhanced(
                  weight: FontWeight.bold,
                  text: widget.bookName,
                  size: 8,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, H * 0.01),
                child: TextEnhanced(
                  text: widget.bookPrice + " JOD",
                  weight: FontWeight.bold,
                ),
              ),
              Container(
                width: W * 0.65,
                height: H * 0.045,
                margin: EdgeInsets.fromLTRB(0, 0, 0, H * 0.01),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: primaryBorderColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonAddMinus(minus: true, add: _subtract),
                    TextEnhanced(
                      text: "$x",
                      weight: FontWeight.bold,
                    ),
                    ButtonAddMinus(minus: false, add: _add),
                  ],
                ),
              ),
              Container(
                width: W * 0.65,
                height: H * 0.045,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: primaryBorderColor)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: FlatButton(
                    onPressed: _remove,
                    child: const FaIcon(
                      FontAwesomeIcons.trashCan,
                      color: primaryColor,
                    ),
                    height: H * 0.045,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
