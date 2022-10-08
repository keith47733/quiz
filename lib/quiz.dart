import 'package:flutter/material.dart';

import 'qa.dart';
import './quiz_screen.dart';
import './result.dart';

class Quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var _questionIndex = 0;
  var _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz')),
      body: _questionIndex < qa.questions.length
          ? QuizScreen(
              _questionIndex,
              qa.questions,
              _answerQuestion,
            )
          : Result(_totalScore, _resetQuiz),
    );
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
}
