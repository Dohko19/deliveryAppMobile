import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/widgets/back_button.dart';
import 'package:flutter/material.dart';

//UI
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(
            statusBarColor: Colors.white
        )
    );

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const Image(
                width: double.maxFinite,
                height: 350.0,
                fit: BoxFit.cover,
                image: NetworkImage('https://img.freepik.com/foto-gratis/surtido-deliciosas-hamburguesas-papas-fritas_23-2148614109.jpg?t=st=1730445009~exp=1730448609~hmac=99468c5e3611a6743a072dbbfa7124bddaba4cd81be073cc63f2ed4d4fd771b9&w=826')
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: backButton(context, Colors.white),
              )
            ],
          ),
          Transform.translate(
            offset: const Offset(0.0, -20.0),
            child: Container(
              width: double.infinity,
              height: 450,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [
                      Text("Welcome back", style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0
                      )),
                      const Text("Login to your account", style: TextStyle(
                          color: grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0
                      )),
                      _emailInput(),
                      _passwordInput(),
                      _buttonLogin(context),
                      Container(
                        margin: const EdgeInsets.only(top: 30.0),
                        child: const Text('Forgot your password?', style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0
                        )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account", style: TextStyle(
                                color: grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 15.0
                            )),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              child: const Text('Sign up', style: TextStyle(
                                  color: orange,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0
                              )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: const EdgeInsets.only(top: 40.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(30.0)
    ),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: const EdgeInsets.only(top: 15.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs,
        borderRadius: BorderRadius.circular(30.0)
    ),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),
  );
}

Widget _buttonLogin(BuildContext context){
  return Container(
    width: 350.0,
    height: 45.0,
    margin: const EdgeInsets.only(top: 30.0),
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
            ),
        ),
        child: const Text('Login', style: TextStyle(
          color: white,
          fontSize: 17.0
        ))
    ),
  );
}