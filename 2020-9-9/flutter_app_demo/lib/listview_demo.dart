import 'package:flutter_app_demo/model/car.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class ListViewDemo extends StatelessWidget {
  Widget _itemForRow(BuildContext context, int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Container(
            child: Image.network(datas[index].imageUrl),
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            datas[index].name,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 18.0,
              fontStyle: FontStyle.values[1],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: datas.length,
      itemBuilder: _itemForRow,
    );
  }
}