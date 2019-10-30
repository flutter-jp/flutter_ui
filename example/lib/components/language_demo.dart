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
                language: MLanguages.Java,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('C'),
              MLanguageColor(
                language: MLanguages.CLanguage,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Python'),
              MLanguageColor(
                language: MLanguages.Python,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('C++'),
              MLanguageColor(
                language: MLanguages.CPP,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('C#'),
              MLanguageColor(
                language: MLanguages.CSharp,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('ASP.NET'),
              MLanguageColor(
                language: MLanguages.ASP,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Javascript'),
              MLanguageColor(
                language: MLanguages.JavaScript,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Sql'),
              MLanguageColor(
                language: MLanguages.SQL,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('PHP'),
              MLanguageColor(
                language: MLanguages.PHP,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('ObjectC'),
              MLanguageColor(
                language: MLanguages.ObjectiveC,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Groovy'),
              MLanguageColor(
                language: MLanguages.Groovy,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Swift'),
              MLanguageColor(
                language: MLanguages.Swift,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Ruby'),
              MLanguageColor(
                language: MLanguages.Ruby,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Assembly'),
              MLanguageColor(
                language: MLanguages.WebAssembly,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('R'),
              MLanguageColor(
                language: MLanguages.R,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Go'),
              MLanguageColor(
                language: MLanguages.Go,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Pascal'),
              MLanguageColor(
                language: MLanguages.Pascal,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('MATLAB'),
              MLanguageColor(
                language: MLanguages.MATLAB,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Perl'),
              MLanguageColor(
                language: MLanguages.Perl,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Kotlin'),
              MLanguageColor(
                language: MLanguages.Kotlin,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
