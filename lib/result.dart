import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  late final int score;
  final VoidCallback _resetQuiz;

  Result(this.score, this._resetQuiz);

  String get resultToString {
    String resultText = 'Your score is $score';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultToString,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: _resetQuiz,
            child: Text("Restart Quiz!"),
          )
        ],
      ),
    );
  }
}
