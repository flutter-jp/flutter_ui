import 'package:flutter/material.dart';
import 'package:flutter_ui/entity.dart';
import 'package:flutter_ui/material.dart';

class CheckListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<CheckItem> items = [
      CheckItem.build('apple'),
      CheckItem.build('banana'),
      CheckItem.build('orange', checked: true),
    ];
    return Container(
      child: Center(
        child: MCheckList(
          items: items,
        ),
      ),
    );
  }
}
