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
      'answers': ['black', 'green', 'red', 'orange']
    },
    {
      'questionText': 'what\'s your favorite games?',
      'answers': ['game 1', 'game 2', 'game 3', 'game 4', 'game 5']
    },
    {
      'questionText': 'what\'s your favorite movie?',
      'answers': ['movie 1', 'movie 2', 'movie 3', 'movie 5']
    },
    {
      'questionText': 'what\'s your favorite movie2?',
      'answers': ['movie 1', 'movie 2', 'movie 3', 'movie 5']
    },
    {
      'questionText': 'what\'s your favorite movie3?',
      'answers': ['movie 1', 'movie 2', 'movie 3', 'movie 5']
    }
  ];

  void _questionIndexFunc() {
    setState(() {
      _questionIndex += 1;
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
            : Result(),
      ),
    );
  }
}
