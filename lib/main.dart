import 'package:flutter/material.dart';
import 'package:flutter_app1/result.dart';
import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var QuestionIndex = 0;
  int totalScore = 0;

  void restartQuiz() {
    setState(() {
      totalScore = 0;
      QuestionIndex = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      QuestionIndex = QuestionIndex + 1;
    });
    print(QuestionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        'questionsBase': 'I am a "worrier"',
        'answers': [
          {'text': 'Agree', 'score': 2},
          {'text': 'Maybe', 'score': 5},
          {'text': 'Disagree', 'score': 8},
        ]
      },
      {
        'questionsBase': 'I make friends easily',
        'answers': [
          {'text': 'Agree', 'score': 2},
          {'text': 'Maybe', 'score': 5},
          {'text': 'Disagree', 'score': 8},
        ]
      },
      {
        'questionsBase': 'I trust others',
        'answers': [
          {'text': 'Agree', 'score': 2},
          {'text': 'Maybe', 'score': 5},
          {'text': 'Disagree', 'score': 8},
        ]
      },
      {
        'questionsBase': 'I complete tasks successfully',
        'answers': [
          {'text': 'Agree', 'score': 2},
          {'text': 'Maybe', 'score': 5},
          {'text': 'Disagree', 'score': 8},
        ]
      },
      {
        'questionsBase': 'I get angry easily',
        'answers': [
          {'text': 'Agree', 'score': 2},
          {'text': 'Maybe', 'score': 5},
          {'text': 'Disagree', 'score': 8},
        ]
      },
      {
        'questionsBase': 'I think art is important',
        'answers': [
          {'text': 'Agree', 'score': 2},
          {'text': 'Maybe', 'score': 5},
          {'text': 'Disagree', 'score': 8},
        ]
      },
      {
        'questionsBase': 'I often feel sad',
        'answers': [
          {'text': 'Agree', 'score': 2},
          {'text': 'Maybe', 'score': 5},
          {'text': 'Disagree', 'score': 8},
        ]
      },
      {
        'questionsBase': 'I love to help others',
        'answers': [
          {'text': 'Agree', 'score': 2},
          {'text': 'Maybe', 'score': 5},
          {'text': 'Disagree', 'score': 8},
        ]
      },
      {
        'questionsBase': 'I keep my promises',
        'answers': [
          {'text': 'Agree', 'score': 2},
          {'text': 'Maybe', 'score': 5},
          {'text': 'Disagree', 'score': 8},
        ]
      },
      {
        'questionsBase': 'I prefer variety to routine',
        'answers': [
          {'text': 'Agree', 'score': 2},
          {'text': 'Maybe', 'score': 5},
          {'text': 'Disagree', 'score': 8},
        ]
      },
      {
        'questionsBase': 'I always chat to lots of different people at parties',
        'answers': [
          {'text': 'Agree', 'score': 2},
          {'text': 'Maybe', 'score': 5},
          {'text': 'Disagree', 'score': 8},
        ]
      },
      {
        'questionsBase': 'I don\'t mind cheating to get ahead',
        'answers': [
          {'text': 'Agree', 'score': 2},
          {'text': 'Maybe', 'score': 5},
          {'text': 'Disagree', 'score': 8},
        ]
      },
      {
        'questionsBase': 'I trust what people say',
        'answers': [
          {'text': 'Agree', 'score': 2},
          {'text': 'Maybe', 'score': 5},
          {'text': 'Disagree', 'score': 8},
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(5, 9, 62, 1),
          title: Container(
            alignment: Alignment.center,
            child: Text('Who are you?',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,

            ),),
          ),
        ),
        body: QuestionIndex < questions.length
            ? Quiz(questions, QuestionIndex, answerQuestion)
            : Result(totalScore, restartQuiz),
      ),
    );
  }
}
