import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ideas_flutter/answer_button.dart';
import 'package:ideas_flutter/data/questions.dart';

// this is the questions screen settings
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(
      () {
        currentQuestionIndex++;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // accessing the list of question from the Question class created
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        // this margin here is for centeralizing the question and answers
        // that is... controlling the strecth constructor in the
        // crossaxisalignment
        margin: const EdgeInsets.all(40),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //stretching the children component to the end of the screen
          //horizontally
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 199, 195, 195),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              // aligning the question text to the center of the column
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            // mapping shuffled
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                //added padding to give more spacing within the elevated button widget
                return Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: AnswerButton(
                    answerText: answer,
                    onTap: () {
                      answerQuestion(answer);
                    },
                  ),
                );
              },
            ),
            //conventing the strings to Widgets
            // dynamically generating a list item
            // mapping shuffled
            // ...currentQuestion.answers.map(
            //   (answer) {
            //     return AnswerButton(answerText: answer, onTap: () {});
            //   },
            // ),
            // instead of hard coding we use the code above ^
            // it optimize the space and ambigious nature of of the code
            // AnswerButton(
            //   answerText: currentQuestion.answers[0],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[1],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[2],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[3],
            //   onTap: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
