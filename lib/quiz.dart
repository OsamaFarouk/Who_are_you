import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  @override
  final List<Map<String, Object>> questions;
  final int QuestionIndex;
  final Function firstIndex;

  Quiz(@required this.questions, @required this.QuestionIndex,
      @required this.firstIndex);

  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color.fromRGBO(5, 9, 62, 1),
          height: 100,
        ),
        SizedBox(height: 30,),
        Question(questions[QuestionIndex]['questionsBase']),
        ...(questions[QuestionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer1) {
          return Answer(() => firstIndex(answer1['score']), answer1['text']);
        }).toList(),
        Expanded(child: Container(
          height: double.infinity,
          color: Color.fromRGBO(5, 9, 62, 1),
        )),
      ],
    );
  }
}
