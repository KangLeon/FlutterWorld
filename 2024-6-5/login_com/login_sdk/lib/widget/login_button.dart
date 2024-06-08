/*
 * @Author: JY 397879704@qq.com
 * @Date: 2024-06-08 02:07:17
 * @LastEditors: JY 397879704@qq.com
 * @LastEditTime: 2024-06-08 16:37:16
 * @FilePath: /login_sdk/lib/widget/login_button.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String title;
  final bool enable;
  final VoidCallback? onPressed;

  const LoginButton(
      {super.key, required this.title, this.enable = true, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: enable ? onPressed : null,
      disabledColor: Colors.white60,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      height: 45,
      color: Colors.blueGrey,
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
