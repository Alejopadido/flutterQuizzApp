import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          answerText,
          style: const TextStyle(fontSize: 18.0),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
