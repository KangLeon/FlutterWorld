import 'package:flutter/material.dart';

class ViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      children: <Widget>[
        Container(
          color: Colors.blue,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "One",
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        ),
        Container(
          color: Colors.greenAccent,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "Two",
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        ),
        Container(
          color: Colors.purpleAccent,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "Three",
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        ),
      ],
    );
  }
}