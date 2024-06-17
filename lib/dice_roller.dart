import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImages = 'images/dice-1.png';
  var currentDiceRoll = 2;

  void rollDice() {
    // var diceRoll = Random().nextInt(6) + 1;
    currentDiceRoll = randomizer.nextInt(6) + 1;
    setState(() {});
    //....
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // use gesture detector to make the
        //image clickable
        // TODO: enable this function usable
        GestureDetector(
          onTap: () {
            rollDice();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Dice rolled'),
                duration: Duration(seconds: 1),
              ),
            );
          },
          child: Image.asset(
            'images/dice-$currentDiceRoll.png',
            width: 200,
          ),

          // TextButton(
          //   onPressed: rollDice,
          //   style: TextButton.styleFrom(
          //     padding: const EdgeInsets.only(top: 20),
          //     foregroundColor: Colors.white,
          //     textStyle: const TextStyle(fontSize: 28),
          //   ),
          //   child: const Text('Roll Dice'),
          // )
        )
      ],
    );
  }
}
