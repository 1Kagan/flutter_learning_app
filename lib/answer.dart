import 'package:flutter/material.dart';

import 'styles/button.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: buttonPrimary,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
