// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  //text field controller
  TextEditingController myController = TextEditingController();

  //greeting message
  String greetingMessage = "";

  //greet user method
  void greetUser() {
    String userName = myController.text;
    setState(() {
      greetingMessage = "Hello, $userName";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //greeting message
              Text(
                greetingMessage,
                style: TextStyle(fontSize: 25, color: Colors.blue),
              ),
              //textfield
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  hintText: "Enter your name..",
                  border: OutlineInputBorder(),
                ),
              ),
              //button
              ElevatedButton(
                  onPressed: () {
                    greetUser();
                  },
                  child: Text("Tap")),
            ],
          ),
        ),
      ),
    );
  }
}
