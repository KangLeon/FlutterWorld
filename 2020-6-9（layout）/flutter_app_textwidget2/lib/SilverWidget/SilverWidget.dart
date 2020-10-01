import 'package:flutter/material.dart';
import '../Model/post.dart';

class SilverWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
       slivers: <Widget>[
         SliverAppBar(
//           pinned: true,//定死导航栏
           floating: true,//稍微向下滚动就会让其显示出来
//           title: Text(
//             'Jiyoung',
//           ),
         expandedHeight: 178.0,
           flexibleSpace: FlexibleSpaceBar(
             title: Text(
               'NBA All Star'.toUpperCase(),
               style: TextStyle(
                 fontSize: 15.0,
                 letterSpacing: 3.0,
                 fontWeight: FontWeight.w400,
               ),
             ),
             background: Image.network(
               'http://img1.gtimg.com/chinanba/pics/hv1/108/4/2324/151119228.jpg',
               fit: BoxFit.cover,
             ),
           ),
         ),

         SliverSafeArea(
           sliver: SliverPadding(
             padding: EdgeInsets.all(8.0),
             sliver: SilverListWidget(),
           ),
         )
       ],
      ),
    );
  }
}

class SilverListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 32.0),
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              type: MaterialType.card,
              clipBehavior: Clip.hardEdge,
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Image.network(
                      posts[index].imageURL,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 32.0,
                    left: 32.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          posts[index].title,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          posts[index].author,
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

class SilverGridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 1.0,
      ),
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Container (
            child: Image.network(
              posts[index].imageURL,
              fit: BoxFit.cover,
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

