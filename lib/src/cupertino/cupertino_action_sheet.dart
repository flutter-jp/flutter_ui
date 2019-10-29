import 'package:flutter/cupertino.dart';
import 'package:flutter_ui/entity.dart';

class CActionSheet {
  static showConfirm(
      {@required BuildContext context,
      @required Function callback,
      @required String title,
      @required String subTitle,
      String confirmLabel = 'Yes',
      String cancelLabel = 'No'}) {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
              title: Text(title),
              message: Text(subTitle),
              actions: [
                CupertinoActionSheetAction(
                  child: Text(confirmLabel),
                  isDefaultAction: true,
                  onPressed: () => callback(),
                ),
                CupertinoActionSheetAction(
                  child: Text(cancelLabel),
                  onPressed: () {
                    Navigator.pop(context, cancelLabel);
                  },
                )
              ],
            ));
  }

  static show(
      {@required BuildContext context,
      @required List<SheetAction> actions,
      @required String title,
      @required String subTitle,
      bool hasCancel = false}) {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
              title: Text(title),
              message: Text(subTitle),
              actions: _buildActions(context, actions, hasCancel),
            ));
  }

  static List<Widget> _buildActions(
      BuildContext context, List<SheetAction> actions, bool hasCancel) {
    List<Widget> list = List<Widget>();
    for (var action in actions) {
      list.add(CupertinoActionSheetAction(
          onPressed: action.pressCallback, child: Text(action.title)));
    }

    if (hasCancel) {
      list.add(CupertinoActionSheetAction(
        child: const Text('Cancel'),
        isDefaultAction: true,
        onPressed: () {
          Navigator.pop(context, 'Cancel');
        },
      ));
    }

    return list;
  }
}
