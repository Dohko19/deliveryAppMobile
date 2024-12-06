import 'package:delivery_app/src/pages/forgot_password.dart';
import 'package:delivery_app/src/pages/login_page.dart';
import 'package:delivery_app/src/pages/sign_up_page.dart';
import 'package:delivery_app/src/pages/welcome_page.dart';
import 'package:delivery_app/src/tabs/tabs_page.dart';
import 'package:flutter/cupertino.dart';

final routes = <String, WidgetBuilder> {
  'welcome': ( BuildContext context ) => const WelcomePage(),
  'login': ( BuildContext context ) => const LoginPage(),
  'forgot-password': ( BuildContext context ) => const ForgotPassword(),
  'sig-up': ( BuildContext context ) => SignUpPage(),
  'tabs': ( BuildContext context ) => const TabsPage(),
};