import 'package:flutter/material.dart';
import 'package:flutter/material.dart%20';
import 'package:google_fonts/google_fonts.dart';
import 'package:ideas_flutter/modules/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});
  final Map<String, Object> itemData;
  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['User_answer'] == itemData['Correct_answer'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['Question_index'] as int,
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  itemData['Question'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  itemData['User_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 243, 217, 139),
                  ),
                ),
                Text(
                  itemData['Correct_answer'] as String,
                  style: const TextStyle(
                    color: Colors.lime,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
