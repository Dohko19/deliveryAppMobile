import 'package:flutter/material.dart';

//routes
import 'package:delivery_app/src/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: 'welcome',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color.fromRGBO(255, 140, 0, 1.0)),
        primaryColor: const Color.fromRGBO(10, 31, 68, 1.0),
        disabledColor: const Color.fromRGBO(142, 142, 147, 1.2),
        highlightColor: const Color.fromRGBO(10, 31, 68, 1.0),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black
          )
        )
      ),
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}