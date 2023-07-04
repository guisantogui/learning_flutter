import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _currentQuestion = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
      _totalScore += score;

    setState(() {
      _currentQuestion++;
    });
  }
  
  void _resetQuiz(){
    setState(() {
      _totalScore = 0;
      _currentQuestion = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questionList = [
      {
        'questionText': 'What \'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 5},
          {'text': 'Green', 'score': 0},
          {'text': 'Red', 'score': 8},
          {'text': 'Blue', 'score': 9}
        ]
      },
      {
        'questionText': 'What \'s your favorite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 2},
          {'text': 'Snake', 'score': 5},
          {'text': 'Lion', 'score': 8},
          {'text': 'Parrot', 'score': 0}]
      },
      {
        'questionText': 'Who\'s your favorite super hero?',
        'answers': [
          {'text': 'Superman', 'score': 6},
          {'text': 'Green Lantern', 'score': 10},
          {'text': 'Ant-man', 'score': 3},
          {'text': 'Spider-man', 'score': 4}]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Flutter App"),
        ),
        body: _currentQuestion < questionList.length
            ? Quiz(questionList, _currentQuestion, _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
