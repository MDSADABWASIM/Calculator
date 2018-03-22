import 'package:flutter/material.dart';
import 'package:calculator/calculator.dart';

void main() => runApp(new calculatorHome());

class calculatorHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator Application",
      theme:  new ThemeData(primarySwatch: Colors.blue),
      home: new calculator(),
    );
  }
}

