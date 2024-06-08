/*
 * @Author: JY 397879704@qq.com
 * @Date: 2024-06-08 11:00:31
 * @LastEditors: JY 397879704@qq.com
 * @LastEditTime: 2024-06-08 11:11:13
 * @FilePath: /flutter_application_1/lib/common/utils/padding_extension.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

extension IntFix on int {
  SizedBox get paddingHeight {
    return SizedBox(height: toDouble());
  }

  SizedBox get paddingWidth {
    return SizedBox(width: toDouble());
  }
}

extension DoubleFix on double {
  SizedBox get paddingHeight {
    return SizedBox(height: this);
  }

  SizedBox get paddingWidth {
    return SizedBox(width: this);
  }
}
