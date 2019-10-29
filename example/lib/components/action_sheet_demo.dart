import 'package:flutter/material.dart';
import 'package:flutter_ui/cupertino.dart';
import 'package:flutter_ui/entity.dart';
import 'package:flutter_ui/material.dart';

class ActionSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var actions = [
      SheetAction(
          title: 'Apple',
          pressCallback: () {
            {
              Navigator.of(context).pop();
              MToast.show(msg: 'apple');
            }
          }),
      SheetAction(
          title: 'Banana',
          pressCallback: () {
            Navigator.of(context).pop();
            MToast.show(msg: 'Banana');
          }),
      SheetAction(
          title: 'Orange',
          pressCallback: () {
            Navigator.of(context).pop();
            MToast.show(msg: 'Orange');
          }),
      SheetAction(
          title: 'Watermelon',
          pressCallback: () {
            Navigator.of(context).pop();
            MToast.show(msg: 'Watermelon');
          }),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('action sheet'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('cupertino confirm action sheet'),
              onPressed: () => {
                CActionSheet.showConfirm(
                    title: 'yes or no',
                    subTitle: 'please choose',
                    context: context,
                    callback: () {
                      Navigator.pop(context);
                      print('you choosed Yes');
                    })
              },
            ),
            RaisedButton(
              child: Text('cupertino custom action sheets'),
              onPressed: () => {
                CActionSheet.show(
                    context: context,
                    actions: actions,
                    title: 'fruits',
                    subTitle: 'please choosed one of them')
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            RaisedButton(
              child: Text('material confirm action sheet'),
              onPressed: () => {
                MActionSheet.showConfirm(
                    context: context,
                    callback: () {
                      Navigator.pop(context);
                      print('you choosed Yes');
                    })
              },
            ),
            RaisedButton(
              child: Text('material custom action sheets'),
              onPressed: () => {
                MActionSheet.show(
                  context: context,
                  actions: actions,
                )
              },
            )
          ],
        ),
      ),
    );
  }
}
