import 'package:flutter/material.dart';
import 'package:flutter_ui/entity.dart';

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

class ButtonStyle {
  Color bgColor = MColor.lightBgColor;
  Color fontColor = MColor.lightFontColor;
  Color iconColor = MColor.lightFontColor;
  Color hoverColor = MColor.lightBgHoverColor;
  Color disabledColor = MColor.lightBgHoverColor;
  ShapeBorder shape;
  Border buttonOutLine;
  EdgeInsetsGeometry padding;
  EdgeInsetsGeometry margin;
}
