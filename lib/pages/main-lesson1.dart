import 'package:flutter/material.dart';
import 'package:introduction/pages/first_page.dart';
import 'package:introduction/pages/home_page.dart';
import 'package:introduction/pages/settings.dart';

//---------------lesson-2 end------------//



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        "/home": (context) => HomePage(),
        "/settings": (context) => Settings(),
      },
    );
  }
}
