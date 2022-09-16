import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class QuizScreen extends StatelessWidget {
  final questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  QuizScreen(@required this.questionIndex, @required this.questions,
      @required this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Map and render question
        Question(questions[questionIndex]['questionText'] as String),
        // Map and render answers
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer['text'], () => answerQuestion(answer['score']));
        }).toList()
      ],
    );
  }
}
