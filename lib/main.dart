import 'package:flutter/material.dart';
import './question.dart';
import 'package:cobaflutter/answer.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  var _questionIndex = 0;

  static const questions = [
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
      if (_questionIndex < _MyFirstAppState.questions.length-1) {
        _questionIndex = _questionIndex + 1;
      } else {
        _questionIndex = 0;
      }
    });
    print(_questionIndex);
    for (var a in _MyFirstAppState.questions[_questionIndex]['answers']) {
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
        body: Column(
          children: [
            Question(_MyFirstAppState.questions[_questionIndex]['questionText']),
            // Row(
            //   children: [
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList(),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
