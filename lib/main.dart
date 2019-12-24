import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyFirstAppState();
  }
}

class MyFirstAppState extends State<MyFirstApp> {
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
  var questionIndex = 0;
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
            Text(this.questions2[questionIndex]),
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
