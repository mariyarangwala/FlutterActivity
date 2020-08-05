import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Counter extends StatefulWidget {

  @override
  _CounterState createState() => _CounterState();
}


class _CounterState extends State<Counter> {
  int counter = 0;
  StreamController<int> _count;

  @override
  void initState() {
    super.initState();
    _count = new StreamController<int>();
    _count.add(0);
  }

  void increment() {
     counter ++;
    _count.add(counter);
  }

  void decrement() {
     counter --;
    _count.add(counter);
  }

  @override
  Widget build(BuildContext context) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            StreamBuilder<int>(
                stream: _count.stream,
                builder: (BuildContext context, snapshot) {
                  return new UpdateCount(snapshot.data);
                }),
          buttons((){
            increment();
            }, (){
            decrement();
            }),
          ],
    );
  }
}

class UpdateCount extends StatelessWidget {
  final int count;
  UpdateCount(this.count);

  Widget build(BuildContext context) {
    return Text(count.toString());
  }
}


class buttons extends StatelessWidget {

  Function() increment;
  Function() decrement;

  buttons(this.increment, this.decrement);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          RaisedButton(
            onPressed: increment,
            child: Text("+"),
            color: Colors.lightBlue,
            padding: EdgeInsets.all(15),
          ),
          RaisedButton(
            onPressed: decrement,
            child: Text("-"),
            color: Colors.lightBlue,
            padding: EdgeInsets.all(15),
          ),
        ],
    );
  }
}



