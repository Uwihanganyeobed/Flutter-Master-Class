// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController todoController = TextEditingController();
  String selectedGender = 'Male';
  Map<String, bool> favoriteLessons = {
    'Mathematics': false,
    'Science': false,
    'History': false,
    'Literature': false,
  };

  // Add controllers for each field
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Registration Todo Form",
            style: TextStyle(
              color: Colors.blueGrey,
              decoration: TextDecoration.underline,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Text(
              "Simple Student Registration Form",
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Poppins',
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "Student FirstName:",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextFormField(
              controller: firstNameController,
              decoration: InputDecoration(
                hintText: "Enter your first name..",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Student Last Name:",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextFormField(
              controller: lastNameController,
              decoration: InputDecoration(
                hintText: "Enter your last name..",
                border: OutlineInputBorder(),
              ),
            ),
            Text(
              "Student Age:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: ageController,
              decoration: InputDecoration(
                hintText: "Enter your age..",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Student Gender:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
            ),
            Row(
              children: [
                Radio(
                  value: 'Male',
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value.toString();
                    });
                  },
                ),
                Text('Male'),
                Radio(
                  value: 'Female',
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value.toString();
                    });
                  },
                ),
                Text('Female'),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Student Email:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Enter your email..",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Favorite Subjects:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            ...favoriteLessons.keys.map((String key) {
              return CheckboxListTile(
                title: Text(key),
                value: favoriteLessons[key],
                onChanged: (bool? value) {
                  setState(() {
                    favoriteLessons[key] = value!;
                  });
                },
              );
            }),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                onPressed: () {
                  // Create a map of all form data
                  final formData = {
                    'firstName': firstNameController.text,
                    'lastName': lastNameController.text,
                    'age': ageController.text,
                    'email': emailController.text,
                    'gender': selectedGender,
                    'favoriteSubjects': favoriteLessons.entries
                        .where((entry) => entry.value)
                        .map((entry) => entry.key)
                        .toList(),
                  };

                  print('Form Data: $formData');
                },
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
