import 'package:flutter/material.dart';

enum ButtonType {
  DANGER,
  WARNING,
  INFO,
  DEFAULT,
  SUCCESS,
  BASIC,
}
enum ButtonShape {
  // 圆角
  Fillet,
  // 方角
  SQUARE_CORNER,
  // 圆形
  CIRCLE,
}
enum ButtonOutLine {
  NONE,
  // 彩色
  COLORFUL,
  // 绿色
  GREEN,
  // 绿色
  BLACK,
  // 灰色
  GREY
}

class ButtonColor {
  static final Color dangerBgColor = Colors.red;
  static final Color warningBgColor = Colors.yellowAccent;
  static final Color infoBgColor = Colors.lightBlueAccent;
  static final Color defaultBgColor = Colors.white;
  static final Color successBgColor = Colors.green;
  static final Color basicBgColor = Colors.grey;

  static final Color dangerFontColor = Colors.white;
  static final Color warningFontColor = Colors.white;
  static final Color infoFontColor = Colors.white;
  static final Color defaultFontColor = Colors.black;
  static final Color successFontColor = Colors.white;
  static final Color basicFontColor = Colors.black;
}

class ButtonStyle {
  Color bgColor = ButtonColor.defaultBgColor;
  Color fontColor = ButtonColor.defaultFontColor;
  ShapeBorder shape;
  Border buttonOutLine;
}
