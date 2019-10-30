import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MLanguageColor extends StatelessWidget {
  final Color language;
  final double size;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  MLanguageColor({
    @required this.language,
    this.padding,
    this.margin,
    this.size = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      child: Icon(
        FontAwesomeIcons.solidCircle,
        color: language,
        size: size,
      ),
    );
  }
}

