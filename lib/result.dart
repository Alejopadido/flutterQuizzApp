import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText = 'You did it';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
      return resultText;
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeble!';
      return resultText;
    } else if (resultScore <= 16) {
      resultText = 'You are bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: const TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
