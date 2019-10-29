import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CAvatar extends StatelessWidget {
  final String url;
  final double width;
  final double height;

  CAvatar(this.url, {this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
    );
  }
}
