import 'package:flutter/material.dart';
import 'package:flutter_ui/material.dart';

class LanguageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('language'),
      ),
      body: GridView.count(
        padding: EdgeInsets.only(top: 20),
        crossAxisCount: 4,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('Java'),
              MLanguageColor(
                language: MLanguage.Java,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('C'),
              MLanguageColor(
                language: MLanguage.CLanguage,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Python'),
              MLanguageColor(
                language: MLanguage.Python,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('C++'),
              MLanguageColor(
                language: MLanguage.CPP,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('C#'),
              MLanguageColor(
                language: MLanguage.CSharp,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('ASP.NET'),
              MLanguageColor(
                language: MLanguage.ASP,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Javascript'),
              MLanguageColor(
                language: MLanguage.JavaScript,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Sql'),
              MLanguageColor(
                language: MLanguage.SQL,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('PHP'),
              MLanguageColor(
                language: MLanguage.PHP,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('ObjectC'),
              MLanguageColor(
                language: MLanguage.ObjectiveC,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Groovy'),
              MLanguageColor(
                language: MLanguage.Groovy,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Swift'),
              MLanguageColor(
                language: MLanguage.Swift,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Ruby'),
              MLanguageColor(
                language: MLanguage.Ruby,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Assembly'),
              MLanguageColor(
                language: MLanguage.WebAssembly,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('R'),
              MLanguageColor(
                language: MLanguage.R,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Go'),
              MLanguageColor(
                language: MLanguage.Go,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Pascal'),
              MLanguageColor(
                language: MLanguage.Pascal,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('MATLAB'),
              MLanguageColor(
                language: MLanguage.MATLAB,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Perl'),
              MLanguageColor(
                language: MLanguage.Perl,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Kotlin'),
              MLanguageColor(
                language: MLanguage.Kotlin,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
