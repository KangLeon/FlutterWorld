import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_travel/navigator/tab_navigator.dart';
import 'package:http/http.dart' as http;

// const CITY_NAMES = {
//   '北京':['东城区','西城区','朝阳区','丰台区','石景山区','海淀区','顺义区'],
//   '上海':['黄浦区','徐汇区','长宁区','静安区','普陀区','闸北区','虹口区'],
//   '广州':['越秀','海珠','荔湾','天河','白云','黄埔','南沙','番愚'],
//   '深圳':['南山','福田','罗湖','盐田','龙岗','宝安','龙华'],
//   '杭州':['上城区','下城区','江干区','拱墅区','西湖区','滨江区'],
//   '苏州':['姑苏区','吴中区','相城区','高新区','虎丘区','工业园区','吴江区']
// };

// const CITY_NAMES = ['北京','上海','广州','深圳','杭州','苏州','成都','武汉','郑州','洛阳','厦门','青岛','拉萨'];

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<String> cityNames = ['北京','上海','广州','深圳','杭州','苏州','成都','武汉','郑州','洛阳','厦门','青岛','拉萨'];

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      if(_scrollController.position.pixels==_scrollController.position.maxScrollExtent){
        _loadData();
      }
    });
    super.initState();
  }

  _loadData() async {
    print("上拉加载");
    await Future.delayed(Duration(milliseconds: 200));
    setState(() {
      List<String> list = List<String>.from(cityNames);
      list.addAll(cityNames);
      cityNames=list;
    });
  }

  Future<Null> _handleRefresh() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      cityNames = cityNames.reversed.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('高级功能列表下拉刷新与上蜡加载更多功能实现'),
        ),
        // ignore: missing_return
        body: RefreshIndicator(
          child: ListView(
            children: _buildList(),
          controller: _scrollController,),
          onRefresh: _handleRefresh,
        ),
      ),
    );
  }

  List<Widget> _buildList() {
    return cityNames.map((city) => _item(city)).toList();
  }

  Widget _item(String city) {
    return Container(
      height: 80,
      margin: EdgeInsets.only(
        bottom: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.teal
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

  Widget _buildSub(String subCity){
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        height: 50,
        margin: EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent
        ),
        child: Text(
          subCity,
        ),
      ),
    );
  }
}


