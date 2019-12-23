import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  void answerQuestion(){
    print('answer chosen!');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The Question! '),
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
                  onPressed: ()=> print('Answer 2 chosen'),
                ),
                Text(' '),
                RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: (){
                    print('Answer 3 chosen');
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
