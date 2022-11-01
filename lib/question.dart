import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text(
          questionText,
          style: TextStyle(
            fontSize: 32,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ));
  }
}