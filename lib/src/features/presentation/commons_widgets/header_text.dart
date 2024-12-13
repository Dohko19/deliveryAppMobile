import 'package:delivery_app/src/colors/colors.dart';
import 'package:flutter/cupertino.dart';

Widget headerText( String text, Color color, double fontSize, FontWeight fontWeight ) {
  return Text(text, style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight
      ));
}