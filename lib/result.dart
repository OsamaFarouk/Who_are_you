import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var resultScore;
  final Function restart;

  Result(this.resultScore, this.restart);

  String get resultTxt {
    String Text;
    if (resultScore <= 40) {
      Text = 'You are an emotional person';
    } else if (resultScore <= 80) {
      Text = 'You are a thinker person';
    } else if (resultScore <= 104) {
      Text = 'You are a strong person';
    } else {
      Text = 'You are a good person';
    }
    return Text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            color: Color.fromRGBO(5, 9, 62, 1),
            height: 100,
          ),
          SizedBox(height: 30,),
          Text(
            resultTxt,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 200,),
          FlatButton(
              onPressed: restart,
              child: Text(
                'Restart Quiz',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange),
              ),
          ),
          SizedBox(height: 30,),
          Expanded(child: Container(
            height: double.infinity,
            color: Color.fromRGBO(5, 9, 62, 1),
          )),
        ],
      ),
    );
  }
}
