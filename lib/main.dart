import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        'Black',
        'Red',
        'Green',
        'White',
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        'Rabbit',
        'Snake',
        'Elephant',
        'Lion',
      ],
    },
    {
      'questionText': 'What\'s your favorite music gender',
      'answers': [
        'Pop',
        'Urban',
        'Reggaeton',
        'Hip Hop',
      ],
    },
  ];
  var _questionIndex = 0;
  // var _totalScore = 0;

  void _answerQuestion() {
    // _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
          titleTextStyle: const TextStyle(fontSize: 30.0),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(10),
      ),
    );
  }
}
