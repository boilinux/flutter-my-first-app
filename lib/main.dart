import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final List _questions = [
    {
      'questionText': 'what\'s your favorite color?',
      'answers': [
        {'text': 'red', 'score': 3},
        {'text': 'blue', 'score': 7},
        {'text': 'black', 'score': 0},
        {'text': 'green', 'score': 13},
        {'text': 'orange', 'score': 23},
      ]
    },
    {
      'questionText': 'what\'s your favorite color 2?',
      'answers': [
        {'text': 'red', 'score': 3},
        {'text': 'blue', 'score': 7},
        {'text': 'black', 'score': 0},
        {'text': 'green', 'score': 13},
        {'text': 'orange', 'score': 23},
      ]
    },
    {
      'questionText': 'what\'s your favorite color 3?',
      'answers': [
        {'text': 'red', 'score': 3},
        {'text': 'blue', 'score': 7},
        {'text': 'black', 'score': 0},
        {'text': 'green', 'score': 13},
        {'text': 'orange', 'score': 23},
      ]
    },
    {
      'questionText': 'what\'s your favorite color 4?',
      'answers': [
        {'text': 'red', 'score': 3},
        {'text': 'blue', 'score': 7},
        {'text': 'black', 'score': 0},
        {'text': 'green', 'score': 13},
        {'text': 'orange', 'score': 23},
      ]
    },
  ];

  var _totalScore = 0;

  void _questionIndexFunc(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
    // print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _questionIndexFunc,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
