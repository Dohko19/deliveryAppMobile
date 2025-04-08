import 'package:delivery_app/src/colors/colors.dart';
import 'package:flutter/material.dart';
import 'header_text.dart';
//
void showAlertDialog(
    BuildContext context,
    ImageProvider<Object> imagePath,
    String headerTitle,
    String headerSubtitle,
    String labelButton,
    Widget doneButton,
    ) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: ( BuildContext context ){
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))
          ),
          content: SizedBox(
            height: 360,
            child: Column(
              children: [
                Image(
                  image: imagePath, //AssetImage('assets/lock.png'),
                  width: 130.0,
                  height: 130.0,
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  child: headerText(headerTitle, black, 20.0, FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.all(15.00),
                  child:  Text(headerSubtitle,
                    style: const TextStyle(
                        color: black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0
                    ),
                  ),
                ),
                doneButton,
              ],
            ),
          ),

        );
      }
  );
}

