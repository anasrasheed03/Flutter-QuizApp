import 'package:flutter/material.dart';
import 'package:learning/quiz.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _totalScore = 0;

  void _resetQuizHandler() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  var _questionIndex = 0;
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'What\'s Your Fav Car',
        'answers': [
          {'text': 'Suzuki', 'score': 9},
          {'text': 'Toyota', 'score': 7},
          {'text': 'Kia', 'score': 3},
          {'text': 'MG', 'score': 2},
          {'text': 'Honda', 'score': 5}
        ]
      },
      {
        'questionText': 'What\'s your fav Food',
        'answers': [
          {'text': 'Biryani', 'score': 3},
          {'text': 'Fast Food', 'score': 9},
          {'text': 'Chinese', 'score': 5},
          {'text': 'Desi', 'score': 4}
        ]
      },
      {
        'questionText': 'What\s your fav sports',
        'answers': [
          {'text': 'Cricket', 'score': 8},
          {'text': 'Football', 'score': 6},
          {'text': 'Esports', 'score': 4}
        ]
      }
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(_questions, _questionIndex, _answerQuestion)
                : Result(_totalScore, _resetQuizHandler)));
  }
}
