import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  String get resultPhrase {
    String res = resultScore.toString();
    return 'Your score is ' + res;
  }

  Result(this.resultScore,this.resetHandler);
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      FlatButton(
        child: Text('Restart the quiz!'),
        textColor: Colors.blue,
        onPressed: resetHandler,
      )
    ]));
  }
}
