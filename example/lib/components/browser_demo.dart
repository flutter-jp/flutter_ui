import 'package:flutter/material.dart';
import 'package:flutter_ui/material.dart';

class BrowserDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[350],
        appBar: AppBar(
          title: Text('Browser'),
        ),
        body: Center(
            child: Row(
          children: <Widget>[
            MButton(
              title: 'google',
              callback: () => {
                MBrowser.open(context, 'google', 'https://www.google.co.jp/')
              },
            ),
            MButton(
              title: 'flutter_ui',
              callback: () => {
                MBrowser.open(context, 'flutter_ui', 'https://ui.flutter-jp.com')
              },
            ),
            MButton(
              title: 'github',
              callback: () => {
                MBrowser.open(context, 'google', 'https://github.com/flutter-jp/flutter_ui')
              },
            )
          ],
        )));
  }
}
