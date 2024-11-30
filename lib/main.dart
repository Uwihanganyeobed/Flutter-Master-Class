// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              onPressed: () {
              },
              icon: Icon(Icons.menu)),
          actions: [
            IconButton(
                onPressed: () {
                },
                icon: Icon(Icons.logout))
          ],
          title: Center(
            child: Text("Intro to Flutter Widgets",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.greenAccent,
                  decorationStyle: TextDecorationStyle.solid,
                )),
          ),
        ),
        backgroundColor: Colors.greenAccent[200],
        // body: Center(
        //     child: Container(
        //   height: 300,
        //   width: 300,
        //   decoration: BoxDecoration(
        //     color: Colors.deepPurpleAccent,
        //     borderRadius: BorderRadius.circular(10),
        //   ),
        //   child: Column(children: [
        //     Text(
        //       "Hello",
        //       textAlign: TextAlign.center,
        //       style: TextStyle(
        //         color: Colors.blue,
        //         fontSize: 40,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //     Icon(
        //       Icons.favorite,
        //       color: Colors.red,
        //       size: 50,
        //     )
        //   ]),
        //   padding: EdgeInsets.all(40),
        // )),
// this list view we use it for scrolling comps
        body: ListView(
          children: [
            Container(
              height: 350,
              color: Colors.deepPurpleAccent,
            ),
            Container(
              height: 350,
              color: Colors.deepPurpleAccent[400],
              child: Text(
                "Ended At time of 45'",
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 350,
              color: Colors.deepPurpleAccent[200],
            ),
          ],
        ),
      ),
    );
  }
}
