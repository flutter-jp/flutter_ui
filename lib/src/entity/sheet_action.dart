import 'package:flutter/cupertino.dart';

class SheetAction {
  String title;
  Function pressCallback;
  bool selected = false;

  SheetAction(
      {@required this.title, @required this.pressCallback, this.selected});
}
