import 'package:flutter/material.dart';
import 'package:ideas_flutter/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Gradient_Container(
          Color.fromARGB(255, 13, 13, 14),
          Color.fromARGB(255, 40, 39, 43),
        ),
      ),
    ),
  );
}
