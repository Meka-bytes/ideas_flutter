import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ideas_flutter/data/questions.dart';
import 'package:ideas_flutter/modules/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswer,
    required this.onRestart,
  });

  final void Function() onRestart;
  final List<String> chosenAnswer;

  // object accepts all type of value
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    // this loop accesses the question and answers in the app
    //one by one till the end
    for (int i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'Question_index': i,
        'Question': questions[i].text,
        'Correct_answer': questions[i].answers[0],
        'User_answer': chosenAnswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    //stores result of getSummary Data
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    //the where() method help to filter list on which you call it on
    //this line of code below deals with the number of correct answers
    // on has chosen
    final numCorrectQuestions = summaryData.where((data) {
      return data['User_answer'] == data['Correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 247, 223, 154),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            //here changing the getSummaryData to summaryData variable
            //since it is has been assigned
            QuestionSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            // get back to this
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 247, 223, 154),
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
