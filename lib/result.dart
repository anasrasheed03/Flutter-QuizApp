import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function restartHandler;
  Result(this.totalScore, this.restartHandler);

  String get resultPhrase {
    String resultText = 'You Did it';
    if (totalScore <= 8) {
      resultText = 'You\'re Very Impressive Person';
    } else if (totalScore <= 10) {
      resultText = 'You\'re Nice Person';
    } else if (totalScore <= 12) {
      resultText = 'You\'re just okay Person';
    } else {
      resultText = 'You\'re Bad Person';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: restartHandler,
            child: Text('Restart Quiz!!'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
