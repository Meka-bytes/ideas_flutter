import 'package:flutter/material.dart';

// making this class/constructor reuseable
// we use the constructo this.text
class StyledText extends StatelessWidget {
  StyledText(this.text, {super.key});
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28.0,
      ),
    );
  }
}
