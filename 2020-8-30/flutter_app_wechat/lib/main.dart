import 'package:flutter/material.dart';

//widget
void main () {
  runApp(MyWidget());
}

//stateful 有状态 stateless无状态
//创建一个widget其实就是一个类
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text('Hello', textDirection: TextDirection.ltr,),
    );
  }
}