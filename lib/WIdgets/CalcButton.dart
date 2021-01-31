import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final int fillcolor;
  final int textcolor;
  final double textsize;
  final Function callback;

  const CalcButton({
    Key key,
    this.text,
    this.fillcolor,
    this.textcolor = 0XFFFFFFFF,
    this.textsize = 24,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: textsize,
            ),
          ),
          onPressed: () {
            callback(text);
          },
          color: fillcolor != null ? Color(fillcolor) : null,
          textColor: Color(textcolor),
        ),
      ),
    );
  }
}
