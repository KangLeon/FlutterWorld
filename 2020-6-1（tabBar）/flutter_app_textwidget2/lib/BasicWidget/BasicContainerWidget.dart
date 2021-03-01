import 'package:flutter/material.dart';

class BasiccontainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
//      color: Colors.grey[100],
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591509987912&di=94ebe8cc5f2fb265003468b620026517&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201201%2F31%2F20120131185839_jVB2X.jpg'),
        alignment: Alignment.topCenter,
        fit: BoxFit.cover,
//        colorFilter: ColorFilter.mode(
//            Colors.indigoAccent[400].withOpacity(0.5),
//            BlendMode.clear
//        ),
      ),
    ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size: 32.0, color: Colors.white),
//            color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              //设置所有边的圆角的属性
              border: Border.all(
                width: 3.0,
                color: Colors.indigoAccent,
                style: BorderStyle.solid,
              ),
                //专门设置所有边的圆角的角度
                //这个与属性的设置与shape: BoxShape.circle,是冲突的，两个只能设置其中之一
//              borderRadius: BorderRadius.circular(16.0),
                  //只设置部分边的圆角
//                borderRadius: BorderRadius.only(
//                  topLeft: Radius.circular(45.0),
//                  bottomLeft: Radius.circular(45.0),
//                ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(6.0, 7.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25.0,
                  spreadRadius: -9.0,
                ),
              ],
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 25, 128, 1.0),
                  ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          )
        ],
      ),
    );
  }
}