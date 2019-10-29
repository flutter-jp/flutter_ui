import 'package:flutter/material.dart';
import 'package:flutter_ui/entity.dart';

class MActionSheet {
  static final double itemHeight = 60;

  static showConfirm(
      {@required BuildContext context,
      @required Function callback,
      String confirmLabel = 'Yes',
      String cancelLabel = 'No'}) {
    List<SheetAction> actions = [
      SheetAction(
        title: confirmLabel,
        pressCallback: () => callback(),
      ),
      SheetAction(
          title: cancelLabel,
          pressCallback: () => Navigator.pop(context),
          selected: true),
    ];

    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
              height: itemHeight * 2,
              child: Column(
                children: <Widget>[
                  ListView.builder(
                      shrinkWrap: true,
                      itemExtent: itemHeight,
                      itemCount: actions.length,
                      itemBuilder: (BuildContext context, int index) {
                        SheetAction action = actions[index];
                        return ListTile(
                            onTap: action.pressCallback,
                            title: Text(
                              action.title,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black),
                            ));
                      }),
                ],
              ));
        });
  }

  static show(
      {@required BuildContext context,
      @required List<SheetAction> actions,
      bool hasCancel = false}) {
    var length = hasCancel ? actions.length + 1 : actions.length;
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: length * itemHeight,
            child: Column(
              children: <Widget>[
                _buildActions(context, actions, hasCancel),
              ],
            ),
          );
        });
  }

  static ListView _buildActions(
      BuildContext context, List<SheetAction> actions, bool hasCancel) {
    if (hasCancel) {
      actions.add(SheetAction(
          title: 'Cancel',
          selected: true,
          pressCallback: () => Navigator.pop(context, 'Cancel')));
    }
    return ListView.builder(
        shrinkWrap: true,
        itemExtent: itemHeight,
        itemCount: actions.length,
        itemBuilder: (BuildContext context, int index) {
          SheetAction action = actions[index];
          return ListTile(
              onTap: action.pressCallback,
              title: Text(
                action.title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ));
        });
  }
}
