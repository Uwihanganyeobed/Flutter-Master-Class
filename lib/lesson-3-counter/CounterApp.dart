// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps, deprecated_member_use

import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Center(
          child: Text(
            'Counter App',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter: ${counter > 5 ? 'Counter is greater than 5' : counter}',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 40,
              ),
            ),
            ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.greenAccent),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(30, 10, 30, 10)),
                ),
                onPressed: () {
                  setState(() {
                    counter += 1;
                  });
                },
                icon: Icon(Icons.add),
                label: Text("Increment")),
            ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(30, 10, 30, 10)),
                ),
                onPressed: () {
                  setState(() {
                    counter -= 1;
                  });
                },
                icon: Icon(Icons.remove),
                label: Text("Decrement")),
            ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.yellowAccent),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(30, 10, 30, 10)),
                ),
                onPressed: () {
                  setState(() {
                    counter = 0;
                  });
                },
                icon: Icon(Icons.refresh),
                label: Text("Reset")),
          ],
        ),
      ),
    );
  }
}
