import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _imageUrls = [
    'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3362413416,132145148&fm=26&gp=0.jpg',
    'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3909335605,2762532975&fm=26&gp=0.jpg',
    'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2722246159,3212394634&fm=15&gp=0.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 160,
              child: Swiper(
                  itemCount: 3,
                autoplay: true,
                itemBuilder: (BuildContext context,int index){
                    return Image.network(
                      _imageUrls[index],
                      fit: BoxFit.fill,
                    );
                },
                pagination: SwiperPagination(),
              ),
            )
          ],
        )
      ),
    );
  }
}
