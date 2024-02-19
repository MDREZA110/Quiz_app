import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen ;

@override
void initState() {
    super.initState();
    activeScreen =  StartScreen(switchScreen);
  }
  void switchScreen(){
    setState(() {
      activeScreen = const Questions();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    
                    Color.fromARGB(255, 7, 52, 4),
                    Color.fromARGB(255, 29, 7, 63)
                  ]),
            ),
            child: activeScreen),
      ),
    );
  }
}
