import 'package:flutter/material.dart';

class Increaments extends StatefulWidget {
  const Increaments({super.key});
  @override
  State<StatefulWidget> createState() {
    return _IncreamentState();
  }
}

class _IncreamentState extends State<Increaments> {
  var counter = 0.0;

  void _increaseValue() {
    setState(
      () {
        counter += 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Center(
              child: Container(
                color: Colors.red,
                height: 50,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
