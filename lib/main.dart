import 'dart:async';
import 'Counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(
      home:MyApp()
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "State",
      home: Scaffold(
        appBar: AppBar(
          title: Text("STREAMS"),
        ),
        body: Column(
        children: <Widget>[
          SizedBox(height: 100, width: 40),
          display(),
          SizedBox(height: 90, width: 40),
          Align(alignment: Alignment.center),
          Counter(),
        ],
      ),
      ),
    );
  }
}

class display extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Hello");
  }
}




