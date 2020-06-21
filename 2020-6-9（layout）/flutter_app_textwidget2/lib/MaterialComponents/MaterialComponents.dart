import 'package:flutter/material.dart';
import '../ButtonDemo/ButtonDemo.dart';
import '../FloatingButtonDemo/FloatingButtonDemo.dart';
import '../PopupMenuButtonDemo/PopupMenuButtonDemo.dart';

class Materialcomponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'ButtonDemo',page: ButtonDemo(),),
          ListItem(title: 'FloatingActionButton',page: FloatingButtonDemo(),),
          ListItem(title: 'PopupMenuButtonDemo',page: PopupMenuButtonDemo(),)
        ],
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {

  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return page;
          }),
        );
      },
    );
  }
}

