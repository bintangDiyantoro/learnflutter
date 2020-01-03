import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  var questions1 = {
    'color': 'What\'s your favorite color?',
    'animal': 'What\'s your favorite animal?',
  };

  var questions2 = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];

  var questionKey = 'color';
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(''),
            Question(this.questions2[_questionIndex]),
            Text(''),
            Row(
              children: [
                Text(' '),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: _answerQuestion,
                ),
                Text(' '),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: () => print('Answer 2 chosen'),
                ),
                Text(' '),
                RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: () {
                    print('Answer 3 chosen');
                  },
                ),
                Text(' '),
                RaisedButton(
                  child: Text('Answer 4'),
                  onPressed: () {
                    print('Answer 4 chosen');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
