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

  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Red', 'Green', 'Blue']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Cat', 'Goat', 'Cow']
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Max', 'Kim', 'John']
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
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
              : Result()),
    );
  }
}
