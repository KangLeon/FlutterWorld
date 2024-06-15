/*
 * @Author: JY 397879704@qq.com
 * @Date: 2024-06-09 20:50:38
 * @LastEditors: JY 397879704@qq.com
 * @LastEditTime: 2024-06-09 20:57:39
 * @FilePath: /flutter_application_1/lib/pages/news/news.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("新闻")),
    );
  }
}
