import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String titleBtn;
  final Function selectHandler;
  Answer(this.selectHandler, this.titleBtn);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
        child: RaisedButton(
          textColor: Colors.white,
          color: Colors.indigo,
          child: Text(this.titleBtn),
          onPressed: this.selectHandler,
        ),
        // alignment: Alignment(0.0, 0.0),
      ),
    );
  }
}
