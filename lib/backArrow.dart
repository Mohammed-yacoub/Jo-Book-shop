import 'package:flutter/material.dart';

import 'constants.dart';

class BackArrow extends StatelessWidget {

  const BackArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return  Positioned(
      top: size.height * 0.04,
      left: size.width * 0.08,
      child: GestureDetector(
        onTap: (){Navigator.pop(context);},
        child: const Icon(
          Icons.arrow_back_ios,
          color: primaryColor,
          size: 32,
        ),
      ),
    );
  }
}
