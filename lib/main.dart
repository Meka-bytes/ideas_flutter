import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void greetings() {
  print('Good Day');
}

//this function is for future reference

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of Your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starter Template',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
    );
  }
}
