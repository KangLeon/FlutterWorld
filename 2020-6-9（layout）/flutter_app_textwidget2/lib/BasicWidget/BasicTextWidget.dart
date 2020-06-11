import 'package:flutter/material.dart';

class BasicTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
        text: TextSpan(
          text: 'flutter',
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 34.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w100,
          ),
          children: [
            TextSpan(
              text: '.com',
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.grey,
              )
            )
          ]
        )
    );
  }
}