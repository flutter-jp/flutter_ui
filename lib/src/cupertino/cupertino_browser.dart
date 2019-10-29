import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CBrowser extends StatelessWidget {
  const CBrowser({Key key, this.url, this.title}) : super(key: key);

  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
