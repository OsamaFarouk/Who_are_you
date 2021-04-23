import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function hold;
  final String text;
  Answer(this.hold, this.text);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5) ,
      child: RaisedButton(
        color: Color(0xFFF49F1C),
        textColor: Color.fromRGBO(5, 9, 62, 1),
        child: Text(text,style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),),
        onPressed: hold,
      ),
    );
  }
}
