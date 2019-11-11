import 'package:flutter/material.dart';

/// http://mint-ui.github.io/docs/#/en/badge

class MBadge extends StatelessWidget {
  final String label;
  final Color color;

  MBadge({@required this.label, this.color});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: color ?? Colors.blue,
    );
  }
}
