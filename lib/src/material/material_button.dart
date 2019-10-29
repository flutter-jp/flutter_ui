import 'package:flutter/material.dart';
import 'package:flutter_ui/entity.dart';
import 'package:flutter_ui/src/entity/button_type.dart';

/// http://mint-ui.github.io/docs/#/en/button

class MButton extends StatelessWidget {
  final String title;
  final Function callback;
  final IconData icon;
  final ButtonType buttonType;
  final ButtonShape buttonShape;
  final ButtonOutLine buttonOutLine;

  MButton(
      {@required this.title,
      @required this.callback,
      this.icon,
      this.buttonType,
      this.buttonShape,
      this.buttonOutLine});

  ButtonStyle _buildButtonStyle() {
    ButtonStyle buttonStyle = ButtonStyle();
    // button color depend on button type
    if (buttonType == ButtonType.BASIC) {
      buttonStyle.bgColor = ButtonColor.basicBgColor;
      buttonStyle.fontColor = ButtonColor.basicFontColor;
    }

    // button shape depend on button shape
    if (buttonShape == ButtonShape.Fillet) {
      buttonStyle.shape = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      );
    }

    // button outline depend on outline
    if (buttonOutLine == ButtonOutLine.BLACK) {
      buttonStyle.shape = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      );
    }

    return buttonStyle;
  }

  @override
  Widget build(BuildContext context) {
    var style = _buildButtonStyle();
    if (this.icon == null) {
      return RaisedButton(
        child: Text(title),
        onPressed: () => callback(),
        shape: style.shape,
        color: style.bgColor,
        textColor: style.fontColor,
      );
    } else {
      return RaisedButton.icon(
        icon: Icon(icon),
        label: Text(title),
        onPressed: () => callback(),
        shape: style.shape,
        color: style.bgColor,
        textColor: style.fontColor,
      );
    }
  }
}
