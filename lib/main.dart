import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Counter(),
        ),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  void _increment(){
    setState(() {
     counter++;
    });
  }

  void _decrement(){
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        RaisedButton(
          onPressed: _increment,
          child: Text("+"),

        ),
        RaisedButton(
          onPressed: _decrement,
          child: Text("-"),
        ),
        Text("count= $counter"),
      ],

    );
  }
}
class Count extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column();
  }
}