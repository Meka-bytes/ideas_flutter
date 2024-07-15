import 'package:flutter/material.dart';
import 'package:ideas_flutter/data/questions.dart';
import 'package:ideas_flutter/modules/result_screen.dart';
import 'package:ideas_flutter/modules/questions_screen.dart';
import 'package:ideas_flutter/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'Start-Screen';
  // Widget? activeScreen;
  // using the init state
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen() ;
  //   });
  // }

  // alternative method
  void switchScreen() {
    setState(() {
      activeScreen = 'Questions-screen';
    });
  }

  //stroing of answers chosen
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(
        () {
          // selectedAnswers = [];
          // condition to switch to result screen
          activeScreen = 'Result-Screen';
        },
      );
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'Questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'Questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    // condition to move to result screen after Quiz
    if (activeScreen == 'Result-Screen') {
      screenWidget = ResultScreen(
        chosenAnswer: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 13, 13, 14),
                Color.fromARGB(255, 40, 39, 43),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
          // child: activeScreen == 'Start-Screen'
          //     ? StartScreen(switchScreen)
          //     : const QuestionsScreen(),
        ),
      ),
    );
  }
}
