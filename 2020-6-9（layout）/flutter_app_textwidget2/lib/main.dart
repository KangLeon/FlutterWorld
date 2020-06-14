import 'dart:ffi';

import "package:flutter/material.dart";
import './CustomDrawerView/CustomDrawer.dart';
import './CustomListView/ListViewCustom.dart';
import './CustomNavigationBar/CustomNavigationBar.dart';
import './CustomListView/ListViewCustom.dart';
import './BasicWidget/BasicWidget.dart';
import './BasicWidget/BasicTextWidget.dart';
import './BasicWidget/BasicContainerWidget.dart';
import './LayoutWidget/LayoutWidget.dart';
import './ViewWidget/ViewWidget.dart';
import './SilverWidget/SilverWidget.dart';

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
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
//          leading: IconButton(//左边按钮
//            icon: Icon(Icons.menu),
//            tooltip: 'Navigation',
//            onPressed: () => debugPrint('Navigation button is pressed.'),
//          ),
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
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewCustom(),
            BasiccontainerWidget(),
            LayoutWidget(),
            SilverWidget(),
          ],
        ),
        drawer: CustomDrawer(),
        bottomNavigationBar: CustomNavigationBar(),
      ),
    );
  }
}
