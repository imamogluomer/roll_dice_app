import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 5, 55, 0),
          Color.fromARGB(255, 13, 135, 0),
        ),
      ),
    ),
  );
}
