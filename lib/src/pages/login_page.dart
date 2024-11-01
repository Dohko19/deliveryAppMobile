import 'package:flutter/material.dart';

//UI
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(
            statusBarColor: Colors.black
        )
    );

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                width: double.infinity,
                image: NetworkImage('https://img.freepik.com/foto-gratis/comida-brasilena-laicos-plana-espacio-copia_23-2148739186.jpg?t=st=1730440143~exp=1730443743~hmac=41ec0aa3951331500f9fd4467d8b54b3263cc9177b87a182a40e1d849f2bf064&w=826')
              )
            ],
          )
        ],
      ),
    );
  }
}
