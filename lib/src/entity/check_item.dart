import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckItem {
  String label;
  IconData icon;
  bool checked;

  CheckItem(
      {@required this.label, this.checked = false, this.icon = Icons.home});

  factory CheckItem.build(String label,
      {bool checked = false, IconData icon = Icons.home}) {
    return CheckItem(label: label, checked: checked, icon: icon);
  }
}
