import 'package:flutter/material.dart';

import './question.dart';

void main() {
  //calling the constructor.
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    //questionIndex = questionIndex + 1;
    print(questionIndex);
    //print('Answer Chosen!');
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite Colour?',
      'What\s your favourite Colour?',
    ];
    //build method takes an argument context, build comes from flutter matieral
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed:
                  answerQuestion, //name instead of result for this function
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 Chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => ('Answer 3 Chosen!'),
            ),
            //removed in flutter 2.0 can use elavated button n child is a widg which is content inside
          ],
        ), //the square brak is a list here. can drop widg because of type inference
      ),
    );
  }
}
