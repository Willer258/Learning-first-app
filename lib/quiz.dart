import 'package:flutter/material.dart';

import 'anwser.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function anwserQuestion;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.anwserQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['reponse'] as List<Map<String, Object>>)
            .map((reponse) => Anwser(() => anwserQuestion(reponse['score']),
                reponse['text'] as String))
            .toList()
      ],
    );
  }
}
