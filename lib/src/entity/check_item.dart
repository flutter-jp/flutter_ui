import 'package:flutter/cupertino.dart';

class CheckItem {
  String label;
  bool checked;

  CheckItem({@required this.label, this.checked = false});

  factory CheckItem.build(String label, {bool checked = false}) {
    return CheckItem(label: label, checked: checked);
  }
}
