import 'package:flutter/cupertino.dart';

//pages
import 'package:delivery_app/src/pages/welcome_page.dart';
import 'package:delivery_app/src/pages/login_page.dart';

final routes = <String,WidgetBuilder> {
  'welcome': ( BuildContext context ) => WelcomePage(),
  'login': ( BuildContext context ) => LoginPage()
};