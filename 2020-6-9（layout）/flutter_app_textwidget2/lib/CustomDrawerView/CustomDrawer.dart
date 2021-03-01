import 'package:flutter/material.dart';
import 'package:flutterapptextwidget2/CustomDrawerView/CustomDrawer.dart';

class CustomDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('JY',style: TextStyle(fontWeight: FontWeight.bold),),
            accountEmail: Text('kangleonjy@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://avatars2.githubusercontent.com/u/22131650?s=400&u=588f351b548ed5a0a1c4ad5ce9eaa8b20941f973&v=4'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591509987912&di=94ebe8cc5f2fb265003468b620026517&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201201%2F31%2F20120131185839_jVB2X.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            title: Text('Message',textAlign: TextAlign.right),
            trailing: Icon(Icons.message, color: Colors.black12,size: 22.0,),
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite',textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite, color: Colors.black12,size: 22.0,),
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings',textAlign: TextAlign.right),
            trailing: Icon(Icons.settings, color: Colors.black12,size: 22.0,),
            onTap: ()=>Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}


