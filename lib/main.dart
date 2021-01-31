import 'package:flutter/material.dart';
import 'WIdgets/CalcButton.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatefulWidget {
  @override
  _CalcAppState createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  String expression = " ";
  String history = " ";

  void numClick(String text) {
    setState(() {
      expression += text;
    });
  }

  void allClear(String text) {
    setState(() {
      expression = "";
      history = "";
    });
  }

  void clear(String text) {
    setState(() {
      expression = "";
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();

    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      history = expression;
      expression = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 12),
            child: Text(
              history,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            alignment: Alignment.bottomRight,
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Text(
              expression,
              style: TextStyle(
                fontSize: 48,
                color: Colors.white,
              ),
            ),
            alignment: Alignment.bottomRight,
          ),
          SizedBox(
            height: 40,
          ),
          //first
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalcButton(
                text: 'AC',
                callback: allClear,
                fillcolor: 0XFF6C807F,
                textsize: 20,
              ),
              CalcButton(
                text: 'C',
                callback: clear,
                fillcolor: 0XFF6C807F,
              ),
              CalcButton(
                text: '%',
                callback: numClick,
                fillcolor: 0XFFFFFFFF,
                textcolor: 0XFF65BDAC,
              ),
              CalcButton(
                text: '/',
                callback: numClick,
                fillcolor: 0XFFFFFFFF,
                textcolor: 0XFF65BDAC,
                textsize: 24,
              ),
            ],
          ),
          //second
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalcButton(
                text: '7',
                callback: numClick,
              ),
              CalcButton(
                text: '8',
                callback: numClick,
              ),
              CalcButton(
                text: '9',
                callback: numClick,
              ),
              CalcButton(
                text: '*',
                callback: numClick,
                fillcolor: 0XFFFFFFFF,
                textcolor: 0XFF65BDAC,
                textsize: 38,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalcButton(
                text: '4',
                callback: numClick,
              ),
              CalcButton(
                text: '5',
                callback: numClick,
              ),
              CalcButton(
                text: '6',
                callback: numClick,
              ),
              CalcButton(
                text: '-',
                callback: numClick,
                fillcolor: 0XFFFFFFFF,
                textcolor: 0XFF65BDAC,
                textsize: 30,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalcButton(
                text: '1',
                callback: numClick,
              ),
              CalcButton(
                text: '2',
                callback: numClick,
              ),
              CalcButton(
                text: '3',
                callback: numClick,
              ),
              CalcButton(
                text: '+',
                callback: numClick,
                fillcolor: 0XFFFFFFFF,
                textcolor: 0XFF65BDAC,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalcButton(
                text: '.',
                callback: numClick,
              ),
              CalcButton(
                text: '0',
                callback: numClick,
              ),
              CalcButton(
                text: '00',
                callback: numClick,
                textsize: 26,
              ),
              CalcButton(
                text: '=',
                callback: evaluate,
                fillcolor: 0XFFFFFFFF,
                textcolor: 0XFF65BDAC,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
