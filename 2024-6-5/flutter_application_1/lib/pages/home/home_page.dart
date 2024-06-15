/*
 * @Author: JY 397879704@qq.com
 * @Date: 2024-06-08 16:38:32
 * @LastEditors: JY 397879704@qq.com
 * @LastEditTime: 2024-06-09 21:12:37
 * @FilePath: /flutter_application_1/lib/pages/home_page.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:login_sdk/utils/navigator_util.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    NavigatorUtil.updateContext(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatGPT'),
      ),
    );
  }
}
