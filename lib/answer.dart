import 'package:flutter/material.dart';

class Answer extends StatelessWidget{

  late final VoidCallback _selectHandler;
  late final String _answerText;

  Answer(this._selectHandler, this._answerText);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
        child: Text(this._answerText),
        onPressed: this._selectHandler,
        ),
    );
  }
}