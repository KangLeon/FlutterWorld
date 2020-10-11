import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_travel/navigator/tab_navigator.dart';
import 'package:http/http.dart' as http;

const CITY_NAMES = ['背景','上海','广州','深圳','杭州','苏州','成都','武汉','郑州','洛阳','厦门','青岛','拉萨'];

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Future与FutureBuilfer实用技巧'),
        ),
        // ignore: missing_return
        body: ListView(
          children: _buildList(),
        ),
      ),
    );
  }

  List<Widget> _buildList() {
    return CITY_NAMES.map((city) => _item(city)).toList();
  }

  Widget _item(city) {
    return Container(
      height: 80,
      margin: EdgeInsets.only(bottom: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.teal,
      ),
      child: Text(
        city,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}


