import 'package:flutter/material.dart';
import 'package:flutter_ui/entity.dart';
import 'package:flutter_ui/material.dart';

class ButtonDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: Text('button'),
      ),
      body: Column(
        children: <Widget>[
          _buildNormalButton(),
          _buildShapeButtons(),
          _buildOutlineButtons(),
          _buildIconButtons()
        ],
      ),
    );
  }

  Widget _buildNormalButton() {
    return Wrap(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          child: Text(
            'Normal Button',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Divider(),
        MButton(title: 'light'), // default button
        MButton(
          title: 'dark',
          buttonType: ButtonType.Dark,
        ),
        MButton(
          title: 'info',
          buttonType: ButtonType.INFO,
        ),
        MButton(
          title: 'danger',
          buttonType: ButtonType.DANGER,
        ),
        MButton(
          title: 'warning',
          buttonType: ButtonType.WARNING,
        ),
        MButton(
          title: 'success',
          buttonType: ButtonType.SUCCESS,
        ),
        MButton(
          title: 'danger',
          buttonType: ButtonType.DANGER,
          disabled: true,
        ),
        MButton(
          title: 'success',
          buttonType: ButtonType.SUCCESS,
          disabled: true,
        )
      ],
    );
  }

  _buildShapeButtons() {
    return Wrap(children: <Widget>[
      Container(
        padding: EdgeInsets.all(5),
        child: Text(
          'Shape Button',
          style: TextStyle(fontSize: 20),
        ),
      ),
      Divider(),
      // button
      MButton(
        title: 'filet',
        buttonShape: ButtonShape.Fillet,
      ),
      MButton(
        title: 'square corner',
        buttonShape: ButtonShape.SQUARE_CORNER,
        radius: 10,
      ),
      MButton(
        title: 'circle',
        buttonShape: ButtonShape.CIRCLE,
      ),
    ]);
  }

  _buildOutlineButtons() {
    return Wrap(children: <Widget>[
      Container(
        padding: EdgeInsets.all(5),
        child: Text(
          'Outline Button',
          style: TextStyle(fontSize: 20),
        ),
      ),
      Divider(),
      // button
      MButton(
        title: 'colorful',
        buttonShape: ButtonShape.OUTLINE,
        buttonOutLine: ButtonOutLine.COLORFUL,
      ),
      MButton(
        title: 'danger',
        buttonShape: ButtonShape.OUTLINE,
        buttonOutLine: ButtonOutLine.DANGER,
      ),
      MButton(
        title: 'success',
        buttonShape: ButtonShape.OUTLINE,
        buttonOutLine: ButtonOutLine.SUCCESS,
      ),
      MButton(
        title: 'warning',
        buttonShape: ButtonShape.OUTLINE,
        buttonOutLine: ButtonOutLine.WARNING,
      ),
      MButton(
        title: 'info',
        buttonShape: ButtonShape.OUTLINE,
        buttonOutLine: ButtonOutLine.INFO,
      ),
      MButton(
        title: 'light',
        buttonShape: ButtonShape.OUTLINE,
        buttonOutLine: ButtonOutLine.LIGHT,
      ),
      MButton(
        title: 'dark',
        buttonShape: ButtonShape.OUTLINE,
        buttonOutLine: ButtonOutLine.DARK,
      ),
    ]);
  }

  _buildIconButtons() {
    return Wrap(children: <Widget>[
      Container(
        padding: EdgeInsets.all(5),
        child: Text(
          'Icon Button',
          style: TextStyle(fontSize: 20),
        ),
      ),
      Divider(),
      // button
      MButton(
        title: 'light',
        icon: Icons.ac_unit,
      ), // default button
      MButton(
        title: 'dark',
        buttonType: ButtonType.Dark,
        icon: Icons.people,
      ),
      MButton(
        title: 'info',
        buttonType: ButtonType.INFO,
        icon: Icons.comment,
      ),
      MButton(
        title: 'danger',
        buttonType: ButtonType.DANGER,
        icon: Icons.brightness_4,
      ),
      MButton(
        title: 'warning',
        buttonType: ButtonType.WARNING,
        icon: Icons.thumb_up,
      ),
      MButton(
        title: 'success',
        buttonType: ButtonType.SUCCESS,
        icon: Icons.favorite,
      ),
    ]);
  }

}
