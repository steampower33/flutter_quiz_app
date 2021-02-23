import 'package:flutter/material.dart';
import 'package:flutter_app/quiz.dart';
import 'package:flutter_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
      if (_questionIndex < _questions.length) {
        print('We have more questions!');
      } else {
        print('No more questions!');
      }
    });
  }

  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cow', 'score': },
        'Rabbit',
        'Dog',
        'Lion'
      ],
    },
    {
      'questionText': 'what\'s your favorite Game?',
      'answers': ['LOL', 'FIFA', 'OVERWATCH', 'MAPLESTORY'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
