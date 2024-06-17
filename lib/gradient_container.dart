import 'package:flutter/material.dart';
import 'package:ideas_flutter/dice_roller.dart';
import 'package:ideas_flutter/styled_text.dart';

//setting an alignment into a variable
// var startAlignment = Alignment.topLeft;
// var endAlignment = Alignment.bottomRight;

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
// This code is for accepting two specified colors

//Class two for gradrient construction func
class Gradient_Container extends StatelessWidget {
  // if you want to add more configuration to the
  //class -- you hae to add your onwn constructor function

  Gradient_Container(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        // the gradient has different identifiers
        gradient: LinearGradient(
            colors: [color1, color2],
            //the alignment feature is use to design how u want
            //your gradient style should start and end
            begin: startAlignment,
            end: endAlignment),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

// this code is for accepting list of colors

// class Gradient_Container extends StatelessWidget {
//   // if you want to add more configuration to the
//   //class -- you hae to add your onwn constructor function

//   const Gradient_Container({super.key, required this.colors});
//   final List<Color> colors;
//   //using final cause it is
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         // the gradient has different identifiers
//         gradient: LinearGradient(
//             colors: colors,
//             //the alignment feature is use to design how u want
//             //your gradient style should start and end
//             begin: startAlignment,
//             end: endAlignment),
//       ),
//       // container doesn't support the const
//       child: Center(
//         // the style text is a reusable class
//         child: StyledText('Hey there'),
//       ),
//     );
//   }
// }
