/*
 * @Author: JY 397879704@qq.com
 * @Date: 2024-06-09 20:37:28
 * @LastEditors: JY 397879704@qq.com
 * @LastEditTime: 2024-06-09 20:40:38
 * @FilePath: /flutter_application_1/lib/components/bottom_tabbar.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
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
    return const Placeholder();
  }
}
