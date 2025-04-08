import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/login_page/View/login_page.dart';
import 'package:flutter/material.dart';

Widget doneButton( BuildContext context, String labelButton){
  return SizedBox(
    width: 300.0,
    height: 40,
    child: ElevatedButton(
      onPressed: (){
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const LoginPage()
            )
        );
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: orange,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(labelButton,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 15.0,
                color: Colors.white
            ),
          )
        ],
      ),
    ),
  );
}