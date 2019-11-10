import 'package:flutter/material.dart';
import 'package:flutter_ui/src/entity/check_item.dart';

/// 需要Material 父组件，比如父组件加个Scaffold
class MCheckList extends StatefulWidget {
  final String title;
  final List<CheckItem> items;
  final Direction direction;
  final bool withTitle;

  MCheckList({
    @required this.items,
    this.title = '',
    this.withTitle = false,
    this.direction = Direction.Vertical,
  });

  @override
  _MCheckListState createState() => _MCheckListState();
}

class _MCheckListState extends State<MCheckList> {
  @override
  Widget build(BuildContext context) {
    var child = _buildCheckList();
    if (widget.direction == Direction.Horizontal) {
      return Row(
        children: child,
      );
    } else {
      return Column(
        children: child,
      );
    }
  }

  // build check box list
  List<Widget> _buildCheckList() {
    return widget.items.map((CheckItem item) {
      if (widget.withTitle) {
        return CheckboxListTile(
          secondary: Icon(item.icon),
            value: item.checked,
            title: Text(item.label ?? ''),
            onChanged: (bool changed) => _onChange(changed, item));
      } else {
        return Checkbox(
            value: item.checked,
            onChanged: (bool changed) => _onChange(changed, item));
      }
    }).toList();
  }

  // check or uncheck the box
  void _onChange(bool changed, CheckItem item) {
    setState(() {
      item.checked = changed;
    });
  }
}

enum Direction { Horizontal, Vertical }
