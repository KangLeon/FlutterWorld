import 'package:flutter/widgets.dart';

//自定义widget，登录输入框
class InputWidget extends StatelessWidget {
  final String hint;
  final ValueChanged<String>? onChanged;
  final bool obscureText;
  final TextInputType? keyboardType;

  const InputWidget(
      {super.key,
      required this.hint,
      this.onChanged,
      this.obscureText = false,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
