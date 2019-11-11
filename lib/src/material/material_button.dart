import 'package:flutter/material.dart';
import 'package:flutter_ui/entity.dart';
import 'package:flutter_ui/material.dart';
import 'package:flutter_ui/src/entity/button_type.dart';

// 参照　https://qiita.com/coka__01/items/30716f42e4a909334c9f　　　
// 　　　https://www.primefaces.org/primeng-7.1.3/#/button

class MButton extends RaisedButton {
  final String title;
  final Function callback;
  final IconData icon;
  final bool disabled;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final FocusNode focusNode;
  final bool autoFocus;
  final double radius;
  final double borderWidth;

  // color
  final ButtonType buttonType;

  // shape
  final ButtonShape buttonShape;

  // base on shape, when shape is outline,this will be useful
  final ButtonOutLine buttonOutLine;

  MButton(
      {this.title = '',
      this.callback,
      this.icon,
      this.padding,
      this.margin,
      this.focusNode,
      this.autoFocus = false,
      this.disabled = false,
      this.radius = 15,
      this.borderWidth = 1.5,
      this.buttonType = ButtonType.Light,
      this.buttonShape = ButtonShape.NORMAL,
      this.buttonOutLine})
      : super(onPressed: callback);

  ButtonStyle _buildButtonStyle() {
    ButtonStyle buttonStyle = ButtonStyle();
    if (margin == null) {
      buttonStyle.margin = EdgeInsets.all(5);
    } else {
      buttonStyle.margin = margin;
    }

    // button color depend on button type
    if (buttonType == ButtonType.Dark) {
      buttonStyle.bgColor = MColor.darkBgColor;
      buttonStyle.fontColor = MColor.darkFontColor;
      buttonStyle.hoverColor = MColor.darkBgHoverColor;
      buttonStyle.disabledColor = MColor.darkBgDisabledColor;
      buttonStyle.iconColor = MColor.darkFontColor;
    } else if (buttonType == ButtonType.Light) {
      buttonStyle.bgColor = MColor.lightBgColor;
      buttonStyle.fontColor = MColor.lightFontColor;
      buttonStyle.hoverColor = MColor.lightBgHoverColor;
      buttonStyle.disabledColor = MColor.lightBgDisabledColor;
      buttonStyle.iconColor = MColor.lightFontColor;
    } else if (buttonType == ButtonType.DANGER) {
      buttonStyle.bgColor = MColor.dangerBgColor;
      buttonStyle.fontColor = MColor.dangerFontColor;
      buttonStyle.hoverColor = MColor.dangerHoverBgColor;
      buttonStyle.disabledColor = MColor.darkBgDisabledColor;
      buttonStyle.iconColor = MColor.dangerFontColor;
    } else if (buttonType == ButtonType.WARNING) {
      buttonStyle.bgColor = MColor.warningBgColor;
      buttonStyle.fontColor = MColor.warningFontColor;
      buttonStyle.hoverColor = MColor.warningHoverBgColor;
      buttonStyle.disabledColor = MColor.warningDisabledBgColor;
      buttonStyle.iconColor = MColor.warningFontColor;
    } else if (buttonType == ButtonType.INFO) {
      buttonStyle.bgColor = MColor.infoBgColor;
      buttonStyle.fontColor = MColor.infoFontColor;
      buttonStyle.hoverColor = MColor.infoHoverBgColor;
      buttonStyle.disabledColor = MColor.infoDisabledBgColor;
      buttonStyle.iconColor = MColor.infoFontColor;
    } else if (buttonType == ButtonType.SUCCESS) {
      buttonStyle.bgColor = MColor.successBgColor;
      buttonStyle.fontColor = MColor.successFontColor;
      buttonStyle.hoverColor = MColor.successHoverBgColor;
      buttonStyle.disabledColor = MColor.successDisabledBgColor;
      buttonStyle.iconColor = MColor.successFontColor;
    }

    // button shape depend on button shape
    if (buttonShape == ButtonShape.Fillet) {
      buttonStyle.shape = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      );
    } else if (buttonShape == ButtonShape.SQUARE_CORNER) {
      buttonStyle.shape = BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      );
    } else if (buttonShape == ButtonShape.CIRCLE) {
      if (padding == null) {
        buttonStyle.padding = EdgeInsets.all(15);
      }
      buttonStyle.shape = CircleBorder(
        side: BorderSide(
          color: buttonStyle.fontColor,
          width: 1,
          style: BorderStyle.solid,
        ),
      );
    } else if (buttonShape == ButtonShape.OUTLINE) {
      // button outline depend on outline
      if (buttonOutLine == ButtonOutLine.DARK) {
        buttonStyle.shape = StadiumBorder(
          side: BorderSide(color: MColor.darkBgColor, width: borderWidth),
        );
      } else if (buttonOutLine == ButtonOutLine.LIGHT) {
        buttonStyle.shape = StadiumBorder(
          side: BorderSide(color: MColor.lightBgColor, width: borderWidth),
        );
      } else if (buttonOutLine == ButtonOutLine.DANGER) {
        buttonStyle.shape = StadiumBorder(
          side:
              BorderSide(color: MColor.dangerBgColor, width: borderWidth),
        );
      } else if (buttonOutLine == ButtonOutLine.SUCCESS) {
        buttonStyle.shape = StadiumBorder(
          side:
              BorderSide(color: MColor.successBgColor, width: borderWidth),
        );
      } else if (buttonOutLine == ButtonOutLine.INFO) {
        buttonStyle.shape = StadiumBorder(
          side: BorderSide(color: MColor.infoBgColor, width: borderWidth),
        );
      } else if (buttonOutLine == ButtonOutLine.WARNING) {
        buttonStyle.shape = StadiumBorder(
          side:
              BorderSide(color: MColor.warningBgColor, width: borderWidth),
        );
      } else if (buttonOutLine == ButtonOutLine.COLORFUL) {
        buttonStyle.shape = Border(
          top: BorderSide(color: MColor.dangerBgColor, width: borderWidth),
          left: BorderSide(color: MColor.infoBgColor, width: borderWidth),
          right:
              BorderSide(color: MColor.warningBgColor, width: borderWidth),
          bottom:
              BorderSide(color: MColor.successBgColor, width: borderWidth),
        );
      }
    }
    return buttonStyle;
  }

  _pressed() {
    if (callback != null) {
      callback();
    } else {
      MToast.show(msg: title);
    }
  }

  @override
  Widget build(BuildContext context) {
    var style = _buildButtonStyle();
    if (this.icon == null) {
      return Container(
        margin: style.margin,
        child: RaisedButton(
          child: Text(title),
          padding: style.padding,
          onPressed: disabled ? null : _pressed,
          shape: style.shape,
          color: style.bgColor,
          focusNode: focusNode,
          splashColor: style.fontColor,
          autofocus: autoFocus,
          hoverColor: style.hoverColor,
          disabledColor: style.disabledColor,
          textColor: style.fontColor,
          disabledTextColor: style.fontColor,
        ),
      );
    } else {
      return Container(
        margin: style.margin,
        padding: style.padding,
        child: RaisedButton.icon(
          icon: Icon(
            icon,
            color: style.iconColor,
          ),
          label: Text(title),
          onPressed: disabled ? null : _pressed,
          shape: style.shape,
          focusNode: focusNode,
          autofocus: autoFocus,
          splashColor: style.fontColor,
          color: style.bgColor,
          hoverColor: style.hoverColor,
          disabledColor: style.disabledColor,
          textColor: style.fontColor,
          disabledTextColor: style.fontColor,
        ),
      );
    }
  }
}
