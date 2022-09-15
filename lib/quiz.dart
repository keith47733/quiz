import 'package:flutter/material.dart';

const String _title = 'Quiz';

var _questionIndex = 0;
var _questions = [
  'What\'s your favourite colour?',
  'What\'s your fabourite animal?',
];

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _renderAppBar(),
      body: Column(children: _renderBody()),
    );
  }
}

Widget _renderAppBar() {
  return AppBar(
    title: Text(_title),
  );
}

List<Widget> _renderBody() {
  return <Widget>[
    Text(_questions[_questionIndex]),
    ElevatedButton(child: Text('Answer 1'), onPressed: _answerQuestion),
    ElevatedButton(child: Text('Answer 2'), onPressed: _answerQuestion),
    ElevatedButton(child: Text('Answer 3'), onPressed: _answerQuestion),
  ];
}

void _answerQuestion() {
  _questionIndex++;
  print('Answer chosen!');
}
