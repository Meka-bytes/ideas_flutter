import 'package:flutter/material.dart';
import 'package:flutter/material.dart%20';

class MyClass extends StatelessWidget {
  const MyClass({super.key});
  @override
  Widget build(context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            children: <Widget>[
              _containerWidget(100, 300),
              _containerWidget(100, 300),
            ],
          ),
        ],
      ),
    );
  }

  //TODO: create a container method
  //that accepts colors as arguments
  Container _containerWidget(height, width) {
    double height = 100;
    double width = 300;
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 167, 180, 187),
            Color.fromARGB(255, 253, 250, 250)
          ],
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: const CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
  }
}
