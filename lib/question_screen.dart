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
      child: Container(
        margin: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
                    Text(
            currentQuestion.text,
            style: TextStyle(color: Colors.white, fontSize: 20,),
            textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    ...currentQuestion.getShuffledAnswer().map((item) {
            return AnswerButton(answerText: item, onTap: () {});
                    }),
                  ]),
          ),
    );
  }
}
