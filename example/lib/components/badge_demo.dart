import 'package:flutter/material.dart';
import 'package:flutter_ui/entity.dart';
import 'package:flutter_ui/material.dart';

class BadgeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('badge'),
        ),
        body: Column(children: <Widget>[
          _buildNormalBadge(),
          Divider(
            color: Colors.grey,
          ),
          _buildNormalBadge(),
        ]));
  }

  Widget _buildNormalBadge() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        MBadge(
          label: '1',
          color: MColor.dangerBgColor,
        ),
        MBadge(
          label: '2',
          color: MColor.warningBgColor,
        ),
        MBadge(
          label: '3',
          color: MColor.infoBgColor,
        ),
        MBadge(
          label: '4',
          color: MColor.successBgColor,
        ),
      ],
    );
  }
}
