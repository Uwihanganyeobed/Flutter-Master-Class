// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:introduction/lesson-3-counter/todo_page.dart';

void main() {
  runApp(MyApp());
}

//---------------lesson-3------------//

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: CounterApp(),
      home: TodoPage(),
    );
  }
}
