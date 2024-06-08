/*
 * @Author: JY 397879704@qq.com
 * @Date: 2024-06-08 15:59:21
 * @LastEditors: JY 397879704@qq.com
 * @LastEditTime: 2024-06-08 16:32:32
 * @FilePath: /login_sdk/lib/utils/navigator_util.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:login_sdk/login_sdk.dart';
import 'package:login_sdk/pages/login_page.dart';

class NavigatorUtil {
  //用于在获取不到context的地方，如dao中跳转页面时使用，需要在HomePage赋值
  static BuildContext? _context;
  static updateContext(BuildContext context) {
    NavigatorUtil._context = context;
  }

  //跳转到指定页面
  static Future<T?> push<T extends Object?>(BuildContext context, Widget page) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => page));
  }

  //跳转到首页
  static goToHome(BuildContext context) {
    if (LoginConfig.instance().homePage is Widget) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => LoginConfig.instance().homePage!));
    } else {
      throw Exception('Please call LoginConfig init first');
    }
  }

  //跳转到登录页
  static goToLogin() {
    //跳转到登录页，并不让返回
    Navigator.pushReplacement(
        _context!, MaterialPageRoute(builder: (context) => const LoginPage()));
  }
}
