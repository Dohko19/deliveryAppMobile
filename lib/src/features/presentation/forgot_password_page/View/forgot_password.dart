import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/alert_dialog.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/done_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/header_text.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/back_button.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          },
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              headerText("Forgot your password", black, 30.0, FontWeight.bold),
              Container(
                padding: EdgeInsets.all(10.0),
                child: const Text("Please enter your email address. You will receive a link to create a new password via email",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0
                )),
              ),
              _emailInput(),
              _sendButton(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput(){
  return Container(
    margin: const EdgeInsets.only(top: 40.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: const Color.fromRGBO(142, 142, 147, 1.2),
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

Widget _sendButton( BuildContext context){
  return Container(
    width: 350.0,
    height: 45,
    margin: const EdgeInsets.only(top: 30.0),
    child: ElevatedButton(
      onPressed: (){
        _showAlert(context);
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: orange,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
          )
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Send',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.white
            ),
          )
        ],
      ),
    ),
  );
}

void _showAlert( BuildContext context ){
  showAlertDialog(
      context,
      const AssetImage('assets/lock.png'),
      'Your password has been reset',
      "You'll shortly receive an email with a code to setup a new password",
      "Done",
      doneButton(context, "Done")
  );
}

// Navigator.push(context, MaterialPageRoute(
//     builder: (context) => const LoginPage())
// );



