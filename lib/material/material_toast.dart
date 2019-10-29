import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FjToast {
  static Future<bool> show(
      {@required String msg,
      double fontSize,
      FjPosition position,
      FjToastLength length,
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
      if (value.index == position.index) {
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

enum FjPosition { TOP, BOTTOM, CENTER }

enum FjToastLength { SHORT, LONG }
