/*
 * @Author: JY 397879704@qq.com
 * @Date: 2024-06-09 20:37:28
 * @LastEditors: JY 397879704@qq.com
 * @LastEditTime: 2024-06-09 21:10:51
 * @FilePath: /flutter_application_1/lib/components/bottom_tabbar.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/conversations/conversations.dart';
import 'package:flutter_application_1/pages/home/home_page.dart';
import 'package:flutter_application_1/pages/mine/mine.dart';
import 'package:flutter_application_1/pages/news/news.dart';
import 'package:login_sdk/utils/navigator_util.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  final PageController _controller = PageController(initialPage: 0);
  final defaultColor = Colors.grey;
  var activeColor = Colors.blue;

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    NavigatorUtil.updateContext(context);
    return Scaffold(
      body: PageView(
        controller: _controller,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomePage(),
          ConversationsPage(),
          NewsPage(),
          MinePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          _bottomItem('首页', Icons.home, 0),
          _bottomItem('聊天', Icons.chat, 1),
          _bottomItem('新闻', Icons.newspaper, 2),
          _bottomItem('我的', Icons.account_circle, 3),
        ],
      ),
    );
  }

  _bottomItem(String title, IconData icon, int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
          color: defaultColor,
        ),
        activeIcon: Icon(icon, color: activeColor),
        label: title);
  }
}
