import 'package:flutter/cupertino.dart';

class SheetAction {
  String title;
  Function pressCallback;
  bool selected = false;
  IconData beforeIcon;
  IconData afterIcon;

  SheetAction(
      {@required this.title,
      @required this.pressCallback,
      this.selected,
      this.beforeIcon,
      this.afterIcon});
}
