import 'package:delivery_app/src/features/presentation/forgot_password_page/View/forgot_password.dart';
import 'package:delivery_app/src/features/presentation/login_page/View/login_page.dart';
import 'package:delivery_app/src/features/presentation/sign_up_page/View/sign_up_page.dart';
import 'package:delivery_app/src/features/presentation/tabs/tabs_page.dart';
import 'package:delivery_app/src/features/presentation/welcome_page/View/welcome_page.dart';
import 'package:flutter/cupertino.dart';

final routes = <String, WidgetBuilder> {
  'welcome': ( BuildContext context ) => const WelcomePage(),
  'login': ( BuildContext context ) => const LoginPage(),
  'forgot-password': ( BuildContext context ) => const ForgotPassword(),
  'sig-up': ( BuildContext context ) => SignUpPage(),
  'tabs': ( BuildContext context ) => const TabsPage(),
};