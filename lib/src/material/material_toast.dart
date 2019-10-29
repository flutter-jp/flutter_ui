import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MToast {
  static Future<bool> show(
      {@required String msg,
      double fontSize,
      MPosition position = MPosition.CENTER,
      MToastLength length = MToastLength.SHORT,
      Color backColor,
      int time,
      Color textColor}) async {
    ToastGravity gravity = ToastGravity.CENTER;
    Toast toastLength = Toast.LENGTH_SHORT;

    /// trans position
    for (var value in ToastGravity.values) {
      if (value.index == position.index) {
        gravity = value;
      }
    }

    /// trans length
    for (var value in Toast.values) {
      if (value.index == toastLength.index) {
        toastLength = value;
      }
    }

    return Fluttertoast.showToast(
        msg: msg,
        fontSize: fontSize,
        gravity: gravity,
        timeInSecForIos: time,
        toastLength: toastLength,
        backgroundColor: backColor,
        textColor: textColor);
  }

  static Future<bool> cancel() {
    return Fluttertoast.cancel();
  }
}

enum MPosition { TOP, BOTTOM, CENTER }

enum MToastLength { SHORT, LONG }
