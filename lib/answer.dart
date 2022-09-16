import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function selectHandler;
  Answer(this.text, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(text),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
