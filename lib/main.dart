import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 9},
        {'text': 'Green', 'score': 8},
        {'text': 'Blue', 'score': 7}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 9},
        {'text': 'Goat', 'score': 8},
        {'text': 'Cow', 'score': 7}
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 9},
        {'text': 'Kim', 'score': 8},
        {'text': 'John', 'score': 7}
      ]
    }
  ];

  void _resetHandler() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    for (var a in _MyFirstAppState._questions[_questionIndex]['answers']) {
      print(a);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Text('My First App'),
          ),
          body: _questionIndex < _MyFirstAppState._questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: this._answerQuestion,
                  questionIndex: _questionIndex)
              : Result(_totalScore, _resetHandler)),
    );
  }
}
