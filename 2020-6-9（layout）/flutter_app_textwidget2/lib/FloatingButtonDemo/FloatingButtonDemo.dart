import 'package:flutter/material.dart';

class FloatingButtonDemo extends StatelessWidget {

  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: () {

    },
    child: Icon(Icons.add),
    elevation: 5.0,
    backgroundColor: Colors.blueAccent,
//    shape: BeveledRectangleBorder(
//      borderRadius: BorderRadius.circular(30.0),
//    ),
  );

  final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
    onPressed: () {},
    label: Text('Add'),
    icon: Icon(Icons.add),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}