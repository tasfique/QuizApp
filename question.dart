import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //_ means cannot be used other place.
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    //used container here to center the text, as it takes the full width.
    return Container(
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
