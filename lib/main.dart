import 'package:flutter/material.dart';
import '../pages/restarting.dart';
import 'package:ideas_flutter/pages';

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
      home: const MyWidget(),
    );
  }
}
