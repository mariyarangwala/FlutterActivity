import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp(
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("State"),
        ),
        body: Column(
          children: [
            display(),
            Counter(),
          ],
        ),
      )
      );
  }
}

class display extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text ("hello");
  }

}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        RaisedButton(

          onPressed: (){
            setState(() {
              counter++;
            });
          },
          child: Text("+"),

        ),
        RaisedButton(
          onPressed: (){
            setState(() {
              counter--;
            });
          },
          child: Text("-"),
        ),
        Text("count= $counter")
      ],
    );
  }
}

