import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Gradient_Container(),
        //this is the margin property
        //some how the same with the padding widget
      ),
    );
  }
}

// this is a class created for a container widget in other to use it later in the
//near future
class Gradient_Container extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        // the gradient has different identifiers
        gradient: LinearGradient(
          colors: <Color>[
            Colors.blueAccent,
            Color.fromARGB(255, 19, 28, 107),
          ],
          //the alignment feature is use to design how u want
          //your gradient style should start and end
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      // container doesn't support the const
      child: const Center(
        child: Text(
          'Hello world!',
          style: TextStyle(color: Colors.white, fontSize: 28.0),
        ),
      ),
    );
  }
}
