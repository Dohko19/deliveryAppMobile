import 'dart:ui';

import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white
      )
    );

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://img.freepik.com/foto-gratis/primer-plano-deliciosos-tacos_23-2150831121.jpg?t=st=1730423839~exp=1730427439~hmac=75043762d68e1e393ac020cf8e52e11c94e2f7bcfcc258487d9160da89528735&w=900')
              )
            ),
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                child: Container(
                  color: Colors.black.withOpacity(0.3)
                ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: const Text('DELIVERED FAST FOOD TO YOUR DOOR', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 45.0
                ))
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                  child: const Text('Set exact location to find the right restaurants near you', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17.0
                  ))
              ),
              Container(
                width: 350.0,
                height: 45.0,
                margin: const EdgeInsets.only(top: 40.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>
                          const LoginPage())
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)
                      )
                    ),
                    child: const Text('Login', style: TextStyle(
                      color: white,
                      fontSize: 15.0
                    ))
                ),
              ),
              Container(
                width: 350.0,
                height: 45.0,
                margin: const EdgeInsets.only(top: 30.0),
                child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage('assets/facebook.png'),
                          width: 20.0,
                          height: 20.0,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: const Text('Connect with facebook', style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0
                          ))
                        ),
                      ],
                    )
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}