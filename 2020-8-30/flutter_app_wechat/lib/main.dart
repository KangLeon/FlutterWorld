import 'package:flutter/material.dart';

//widget
void main () => runApp(APP());

//stateful 有状态 stateless无状态

class APP extends StatelessWidget {fl
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlutterDemo'),
        ),
        body: MyWidget(),
      ),
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
    );
  }
}

//创建一个widget其实就是一个类
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'Hello flutter',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
        ),
      ),
    );
  }
}