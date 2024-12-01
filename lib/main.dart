// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:introduction/pages/first_page.dart';
import 'package:introduction/pages/home_page.dart';
import 'package:introduction/pages/settings.dart';

void main() {
  runApp(MyApp());
}

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
