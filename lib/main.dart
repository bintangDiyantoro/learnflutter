import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Text(
            'Ad cillum veniam mollit excepteur labore excepteur ullamco consectetur voluptate occaecat labore culpa. Eu et enim aliquip in nisi nulla duis ex voluptate laboris est ex sint dolore. Consequat nulla enim qui aliqua cillum officia cillum aute ea consectetur. Qui elit do incididunt officia magna. In laborum esse veniam mollit et.'),
      ),
    );
  }
}
