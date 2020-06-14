import 'package:flutter/material.dart';
import '../Model/post.dart';

class ViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewBuilderWidget();
  }
}

class GridViewBuilderWidget extends StatelessWidget {

  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageURL,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder (
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
    );
  }
}

class GridViewExtentWidget extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0,0.0),
        child: Text(
          'Item $index',
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _buildTiles(100),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0,0.0),
        child: Text(
          'Item $index',
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _buildTiles(100),
    );
  }
}

class PageViewBuilderWidget extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageURL,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                posts[index].author,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          bottom: 8.0,
          right: 8.0,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      pageSnapping: true,
      reverse: false,
      scrollDirection: Axis.horizontal,
      onPageChanged: (currentPage) {
        return print('Page $currentPage');
      },
      controller: PageController(
        initialPage: 1,
        keepPage: true,
        viewportFraction: 1.0,
      ),
      children: <Widget>[
        Container(
          color: Colors.blue,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "One",
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        ),
        Container(
          color: Colors.greenAccent,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "Two",
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        ),
        Container(
          color: Colors.purpleAccent,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "Three",
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        ),
      ],
    );
  }
}