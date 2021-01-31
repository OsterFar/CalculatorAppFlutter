import 'package:flutter/material.dart';
import 'WIdgets/CalcButton.dart';

void main() {
  runApp(CalculateApp());
}

class CalculateApp extends StatelessWidget {
  // This widget is the root of your application.
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
              "123*123",
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
              "123",
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
                fillcolor: 0XFF6C807F,
                textsize: 20,
              ),
              CalcButton(
                text: 'C',
                fillcolor: 0XFF6C807F,
              ),
              CalcButton(
                text: '%',
                fillcolor: 0XFFFFFFFF,
                textcolor: 0XFF65BDAC,
              ),
              CalcButton(
                text: '/',
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
              ),
              CalcButton(
                text: '8',
              ),
              CalcButton(
                text: '9',
              ),
              CalcButton(
                text: '*',
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
              ),
              CalcButton(
                text: '5',
              ),
              CalcButton(
                text: '6',
              ),
              CalcButton(
                text: '-',
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
              ),
              CalcButton(
                text: '2',
              ),
              CalcButton(
                text: '3',
              ),
              CalcButton(
                text: '+',
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
              ),
              CalcButton(
                text: '0',
              ),
              CalcButton(
                text: '00',
                textsize: 26,
              ),
              CalcButton(
                text: '=',
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
