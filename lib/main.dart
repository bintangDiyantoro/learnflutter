import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  void answerQuestion() {
    print('answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = {
      'color': 'What\'s your favorite color?',
      'animal': 'What\'s your favorite animal?',
    };

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(''),
            Text(questions['animal']),
            Text(''),
            Row(
              children: [
                Text(' '),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: answerQuestion,
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
