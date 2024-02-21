// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';


class QuestionsScreen extends StatefulWidget {
   const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
      final currentQuestion = questions[0]; 
    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
         currentQuestion.text ,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        SizedBox(height: 30),
        AnswerButton(answerText: currentQuestion.answers[0], onTap: () {}),
        SizedBox(height: 10),
        AnswerButton(answerText: currentQuestion.answers[1], onTap: () {}),
        SizedBox(height: 10),
        AnswerButton(answerText: currentQuestion.answers[2], onTap: () {}),
        SizedBox(height: 10),
        AnswerButton(answerText: currentQuestion.answers[3], onTap: () {}),
      ]),
    );
  }
}
