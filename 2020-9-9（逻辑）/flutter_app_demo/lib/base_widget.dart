import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {

  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _title='Flutter 高级进阶';
  final String _author = 'JY';

  @override
  Widget build(BuildContext context) {
    return Text(
      '$_title -- $_author+本课程将针对iOS工程师快速上手Flutter技术，本课程设计贯穿整个项目。',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: '<flutter高级进阶班>',
          style: TextStyle(
          fontSize: 30,
        color: Colors.black,
      ),
          children: <TextSpan> [
            TextSpan(
              text:  '--',
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
            ),
            TextSpan(
              text:  'JY',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ],
      ),
    );
  }
}
