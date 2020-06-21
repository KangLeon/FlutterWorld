import 'package:flutter/material.dart';
import '../PostShowWidget/PostShowWidget.dart';
import '../Model/post.dart';

class ListViewCustom extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(
                  posts[index].imageURL,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                posts[index].author,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(height: 16.0,)
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              //添加溅墨动画
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return PostShowWidget(post: posts[index]);
                    }),
                  );
                },
              ),
            ),
          ),
        ],
      ),


    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}