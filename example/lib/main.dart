import 'package:example/components/badge_demo.dart';
import 'package:example/components/action_sheet_demo.dart';
import 'package:example/components/browser_demo.dart';
import 'package:example/components/button_demo.dart';
import 'package:example/components/checklist_demo.dart';
import 'package:example/components/language_demo.dart';
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
        Router.button: (context) => ButtonDemo(),
        Router.language: (context) => LanguageDemo(),
        Router.checkList: (context) => CheckListDemo(),
        Router.badge: (context) => BadgeDemo(),
        Router.browser: (context) => BrowserDemo(),
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
          // action sheet
          ListTile(
            leading: Icon(FontAwesomeIcons.shekelSign, color: Colors.blue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('action sheet'),
            onTap: () => Navigator.of(context).pushNamed(Router.actionSheet),
          ),
          Divider(color: Colors.grey),
          // toast
          ListTile(
            leading: Icon(FontAwesomeIcons.tag, color: Colors.blue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('toast'),
            onTap: () => Navigator.of(context).pushNamed(Router.toast),
          ),
          Divider(color: Colors.grey),
          /// button
          ListTile(
            leading: Icon(FontAwesomeIcons.clipboardCheck, color: Colors.blue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('button'),
            onTap: () => Navigator.of(context).pushNamed(Router.button),
          ),
          Divider(color: Colors.grey),
          // github language color
          ListTile(
            leading: Icon(FontAwesomeIcons.language, color: Colors.blue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('language'),
            onTap: () => Navigator.of(context).pushNamed(Router.language),
          ),

          Divider(color: Colors.grey),
          ///  check box list
          ListTile(
            leading: Icon(FontAwesomeIcons.boxes, color: Colors.blue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('check box list'),
            onTap: () => Navigator.of(context).pushNamed(Router.checkList),
          ),
          Divider(color: Colors.grey),
          // badge
          ListTile(
            leading: Icon(FontAwesomeIcons.idBadge, color: Colors.blue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('badge'),
            onTap: () => Navigator.of(context).pushNamed(Router.badge),
          ),
          Divider(color: Colors.grey),
          // browser
          ListTile(
            leading: Icon(Icons.settings_ethernet, color: Colors.blue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('browser'),
            onTap: () => Navigator.of(context).pushNamed(Router.browser),
          ),
          Divider(color: Colors.grey),
        ],
      ),
    );
  }
}
