import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class ButtonAddMinus extends StatelessWidget {
  final bool minus;
  final Function add;


  const ButtonAddMinus({Key? key, required this.minus, required this.add}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double H = MediaQuery.of(context).size.height;
    double W = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
          border: minus? const Border( right: BorderSide(width: 1, color: primaryBorderColor)) : const Border( left: BorderSide(width: 1, color: primaryBorderColor))
      ),
      width: W * 0.65/3,
      child: ClipRRect(
        borderRadius: minus? const BorderRadius.only(topLeft: Radius.circular(15) ,bottomLeft:  Radius.circular(15)): const BorderRadius.only(topRight: Radius.circular(15) ,bottomRight:  Radius.circular(15)) ,
        child: FlatButton(
          onPressed:  (){add();},
          child: minus? const FaIcon(FontAwesomeIcons.minus,color: primaryColor, size: 15,) :  const FaIcon(FontAwesomeIcons.plus,color: primaryColor, size: 15,),
          height: H * 0.045,
        ),
      ),
    );
  }
}
