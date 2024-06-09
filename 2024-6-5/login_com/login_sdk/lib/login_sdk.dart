/*
 * @Author: JY 397879704@qq.com
 * @Date: 2024-06-07 15:47:13
 * @LastEditors: JY 397879704@qq.com
 * @LastEditTime: 2024-06-08 18:02:40
 * @FilePath: /login_sdk/lib/login_sdk.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
library login_sdk;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginConfig {
  static LoginConfig? _instance;
  Widget? homePage;
  static LoginConfig instance() {
    _instance ??= LoginConfig._();
    return _instance!;
  }

  //初始化登录所需的配置
  Future<void> init({required Widget homePage}) async {
    this.homePage = homePage;
  }

  LoginConfig._();
}
