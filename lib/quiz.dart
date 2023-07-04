import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> _questionList;
  final int _currentQuestion;
  final Function _answerQuestion;

  Quiz(this._questionList, this._currentQuestion, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          (_questionList[_currentQuestion]['questionText'] as String),
        ),
        ...(_questionList[_currentQuestion]['answers']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            () => _answerQuestion((answer['score'] as int)),
            (answer['text'] as String),
          );
        })
      ],
    );
  }
}
