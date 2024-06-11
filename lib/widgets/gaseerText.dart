import 'package:flutter/material.dart';

class GaseerText extends StatelessWidget {
  String name; // property
  int age;
  String? title;
  String test;
  GaseerText(this.age,
      {super.key, required this.name, required this.test, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        name + age.toString() + test,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 12, letterSpacing: 12),
      ),
    );
  } //constructor
}
