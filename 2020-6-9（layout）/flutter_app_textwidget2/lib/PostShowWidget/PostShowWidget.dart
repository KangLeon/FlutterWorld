import 'package:flutter/material.dart';
import '../Model/post.dart';

class PostShowWidget extends StatelessWidget {

  final Post post;

  PostShowWidget({
      @required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Image.network(
            post.imageURL
          ),
          Container(
            padding: EdgeInsets.all(32.0),
            width: double.infinity,//让容器占满所有可用空间
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${post.title}',style: Theme.of(context).textTheme.headline6),
                Text('${post.author}',style: Theme.of(context).textTheme.subtitle1),
                SizedBox(height: 32.0),
                Text('${post.description}',style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
