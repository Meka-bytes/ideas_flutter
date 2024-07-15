import 'package:flutter/material.dart';
import 'package:flutter/material.dart%20';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  // using the type function
  // similar to the roll die function created last time
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            'images/quiz-logo.png',
            width: 280,
            // you can add colors to the image asset
            //and set transperency using the color
            //constructor
            color: const Color.fromARGB(255, 235, 241, 196),
          ),

          //setting transperency using opacity
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(

          //     'images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(height: 80.0),
          Text(
            'Learn Flutter the fun way',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 251, 255, 213),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          //.icon used to add icond to the button
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
              // ...
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            // child
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
