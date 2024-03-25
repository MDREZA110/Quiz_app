import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswerList = [];
  var activeScreen = 'start-screen';

//! i will change function-name from chosenAnswer to saveChosenAnswer

  void choseAnswer(String selectedAnswer) {
    selectedAnswerList.add(selectedAnswer);
    if (selectedAnswerList.length == questions.length) {
      setState(() {
        //selectedAnswerList = [];
        activeScreen = 'result-screen';
      });
    }
  }

  void switchScreen({String? screenName}) {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void startQuizAgain() {
    setState(() {
      //activeScreen = 'start-screen-again';
      activeScreen = 'start-screen';
      selectedAnswerList = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: choseAnswer /*saveChosenAnswer */,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget =
          ResultScreen(startQuizAgain, chosenAnswer: selectedAnswerList);
    }

    if (activeScreen == 'start-screen-again') {
      screenWidget = StartScreen(switchScreen);
    }

    return MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 89, 44, 167),
                      Color.fromARGB(255, 38, 9, 85)
                    ]),
              ),
              child: screenWidget)),
    );
  }
}
