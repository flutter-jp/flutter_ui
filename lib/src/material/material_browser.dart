import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MBrowser extends StatelessWidget {
  const MBrowser({Key key, @required this.url, this.title}) : super(key: key);

  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }

  static void open(BuildContext context, String title, String url) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return MBrowser(
        title: title,
        url: url,
      );
    }));
  }
}
