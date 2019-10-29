import 'package:example/components/action_sheet_demo.dart';
import 'package:example/components/toast_demo.dart';
import 'package:example/config/router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Show',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        Router.actionSheet: (context) => ActionSheet(),
        Router.toast: (context) => Toast(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter UI Show'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(FontAwesomeIcons.shekelSign, color: Colors.blue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('action sheet'),
            onTap: () => Navigator.of(context).pushNamed(Router.actionSheet),
          ),
          Divider(color: Colors.grey),
          ListTile(
            leading: Icon(FontAwesomeIcons.tag, color: Colors.blue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('toast'),
            onTap: () => Navigator.of(context).pushNamed(Router.toast),
          ),
          Divider(color: Colors.grey),
        ],
      ),
    );
  }
}
