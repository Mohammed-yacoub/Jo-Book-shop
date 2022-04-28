import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jo_book_shop/textEnhanced.dart';

import 'constants.dart';

class LibraryName extends StatelessWidget {
  final String name;

  const LibraryName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double H = MediaQuery.of(context).size.height;
    double W = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, H * 0.017),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:
            EdgeInsets.fromLTRB(W * 0.04, 0, W * 0.04, 0),
            child: const FaIcon(
              FontAwesomeIcons.bank,
              size: 25,
            ),
          ),
          TextEnhanced(
            text: name,
            size: 22,
            color: primaryColor,
            weight: FontWeight.w600,
          )
        ],
      ),
    );
  }
}
