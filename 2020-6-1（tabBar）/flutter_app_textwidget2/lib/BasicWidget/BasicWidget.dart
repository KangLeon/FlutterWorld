import 'package:flutter/material.dart';

class BasicWidget extends StatelessWidget {

  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _title="将进酒";
  final String _author="李白";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}