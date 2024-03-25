// ignore_for_file: avoid_print, dead_code

import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        
        height: 300,
        child: SingleChildScrollView(
          child: Column(
            children: summaryData.map(
              (data) {
                return Row(
                  children: [
                    
                  CircleAvatar(backgroundColor: data['user_answer'] == data['correct_answer'] ?  const Color.fromARGB(255, 76, 175, 162) : const Color.fromARGB(255, 237, 122, 113),
                      child: Text(
                        ((data['question-index'] as int) + 1).toString(),
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 38),
                          Text(
                            data['question'] as String,
                            style: const TextStyle(color: Colors.white70),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            data['user_answer'] as String,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 13, 150, 204),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            data['correct_answer'] as String,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 213, 29, 234)),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ).toList(),
          ),
        ),
      
    );
  }
}
