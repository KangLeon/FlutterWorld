import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHome(),
    );
  }
}


class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  Tween<Offset> myTween = Tween<Offset>(
    begin: Offset(1, 0),
    end: Offset(0, 0),
  );
  var _data = <String>[];
  final _myListKey = GlobalKey<AnimatedListState>();

  Widget myListItem(String d, animation) {
    return SlideTransition(
      position: animation.drive(myTween),
      child: myItem(d),
    );
  }

  Widget myItem(String d) {
    return ListTile(
      title: Text(
        '${d}',
        style: TextStyle(fontSize: 40),
      ),
      trailing: IconButton(
        onPressed: () {
          var index = _data.indexOf(d);
          _data.remove(d);
          _myListKey.currentState.removeItem(
              index, (context, animation) => myListItem(d, animation));
        },
        icon: Icon(Icons.delete_forever),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String newv = Random().nextInt(1000).toString();
          _data.add(newv);
          var index = _data.lastIndexOf(newv);
          _myListKey.currentState.insertItem(index);
        },
        child: Icon(Icons.add),
      ),
      body: AnimatedList(
        key: _myListKey,
        initialItemCount: _data.length,
        itemBuilder: (context, int index, Animation<double> animation) {
          return myListItem(_data[index], animation);
        },
      ),
    );
  }
}