/*
 * @Author: JY 397879704@qq.com
 * @Date: 2024-06-07 16:15:14
 * @LastEditors: JY 397879704@qq.com
 * @LastEditTime: 2024-06-08 00:57:21
 * @FilePath: /login_sdk/lib/pages/login_page.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE 
 */
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  get _background {
    return [
      Positioned.fill(
          child: Image.network(
        "https://o.devio.org/images/bg_cover/robot.webp",
        fit: BoxFit.cover,
      )),
      Positioned.fill(
          child: Container(
        decoration: const BoxDecoration(color: Colors.black54),
      ))
    ];
  }

  get _content {
    return Positioned.fill(
        left: 25,
        right: 25,
        child: ListView(
          children: [
            const Text(
              'ChatGPT',
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: _jumpRegistration,
                child: const Text(
                  '注册账号',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          ..._background,
          _content,
        ],
      ),
    );
  }

  _jumpRegistration() async {
    //TODO：
  }
}
