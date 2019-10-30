import 'package:flutter/material.dart';
import 'package:flutter_ui/entity.dart';
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
                language: LanguageColors.Java,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('C'),
              MLanguageColor(
                language: LanguageColors.CLanguage,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Python'),
              MLanguageColor(
                language: LanguageColors.Python,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('C++'),
              MLanguageColor(
                language: LanguageColors.CPP,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('C#'),
              MLanguageColor(
                language: LanguageColors.CSharp,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('ASP.NET'),
              MLanguageColor(
                language: LanguageColors.ASP,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Javascript'),
              MLanguageColor(
                language: LanguageColors.JavaScript,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Sql'),
              MLanguageColor(
                language: LanguageColors.SQL,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('PHP'),
              MLanguageColor(
                language: LanguageColors.PHP,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('ObjectC'),
              MLanguageColor(
                language: LanguageColors.ObjectiveC,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Groovy'),
              MLanguageColor(
                language: LanguageColors.Groovy,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Swift'),
              MLanguageColor(
                language: LanguageColors.Swift,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Ruby'),
              MLanguageColor(
                language: LanguageColors.Ruby,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Assembly'),
              MLanguageColor(
                language: LanguageColors.WebAssembly,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('R'),
              MLanguageColor(
                language: LanguageColors.R,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Go'),
              MLanguageColor(
                language: LanguageColors.Go,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Pascal'),
              MLanguageColor(
                language: LanguageColors.Pascal,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('MATLAB'),
              MLanguageColor(
                language: LanguageColors.MATLAB,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Perl'),
              MLanguageColor(
                language: LanguageColors.Perl,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Kotlin'),
              MLanguageColor(
                language: LanguageColors.Kotlin,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
