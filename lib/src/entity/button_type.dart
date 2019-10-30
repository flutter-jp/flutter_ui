import 'package:flutter/material.dart';

enum ButtonType {
  Dark,
  Light,
  DANGER,
  WARNING,
  INFO,
  SUCCESS,
}
enum ButtonShape {
  NORMAL,
  // 圆角
  Fillet,
  // 方角
  SQUARE_CORNER,
  // 圆形
  CIRCLE,
  // 边框
  OUTLINE
}
enum ButtonOutLine {
  // 彩色
  COLORFUL,
  // 绿色
  SUCCESS,
  // 红色
  DANGER,
  // 黄色
  WARNING,
  // 蓝色
  INFO,
  // 绿色
  DARK,
  // 灰色
  LIGHT
}

class ButtonColor {
  // button color
  static final Color dangerBgColor = Colors.red;
  static final Color warningBgColor = Colors.yellow;
  static final Color infoBgColor = Colors.lightBlue;
  static final Color successBgColor = Colors.green;
  static final Color lightBgColor = Colors.white;
  static final Color darkBgColor = Colors.black;

  // hover color
  static final Color dangerHoverBgColor = Colors.redAccent;
  static final Color warningHoverBgColor = Colors.yellowAccent;
  static final Color infoHoverBgColor = Colors.lightBlueAccent;
  static final Color successHoverBgColor = Colors.greenAccent;
  static final Color lightBgHoverColor = Colors.white38;
  static final Color darkBgHoverColor = Colors.black87;

  // disabled color
  static final Color dangerDisabledBgColor = Colors.redAccent;
  static final Color warningDisabledBgColor = Colors.yellowAccent;
  static final Color infoDisabledBgColor = Colors.lightBlueAccent;
  static final Color successDisabledBgColor = Colors.greenAccent;
  static final Color lightBgDisabledColor = Colors.white38;
  static final Color darkBgDisabledColor = Colors.black87;

  // font color
  static final Color dangerFontColor = Colors.white;
  static final Color warningFontColor = Colors.black54;
  static final Color infoFontColor = Colors.white;
  static final Color lightFontColor = Colors.black;
  static final Color successFontColor = Colors.white;
  static final Color darkFontColor = Colors.white;
}

class ButtonStyle {
  Color bgColor = ButtonColor.lightBgColor;
  Color fontColor = ButtonColor.lightFontColor;
  Color iconColor = ButtonColor.lightFontColor;
  Color hoverColor = ButtonColor.lightBgHoverColor;
  Color disabledColor = ButtonColor.lightBgHoverColor;
  ShapeBorder shape;
  Border buttonOutLine;
  EdgeInsetsGeometry padding;
  EdgeInsetsGeometry margin;
}
