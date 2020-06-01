import 'dart:ffi';

import "package:flutter/material.dart";
import 'package:flutterapptextwidget2/CustomListView/ListViewCustom.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,//debug小图标移除
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(//左边按钮
          icon: Icon(Icons.menu),
          tooltip: 'Navigation',
          onPressed: () => debugPrint('Navigation button is pressed.'),
        ),
        title: Text("NBA球星"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () => debugPrint('Search button is pressed.'),
          ),
          IconButton(
            icon: Icon(Icons.library_music),
            tooltip: 'music',
            onPressed: () => debugPrint('Music button us pressed.'),
          ),
        ],
        elevation: 0.0,
      ),
      body: null,
    );
  }
}
