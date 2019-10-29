import 'package:flutter/material.dart';
import 'package:flutter_ui/cupertino.dart';
import 'package:flutter_ui/material.dart';

class ActionSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var actions = [
      CAction(
          title: 'Apple',
          pressCallback: () {
            {
              Navigator.of(context).pop();
              MToast.show(msg: 'apple');
            }
          }),
      CAction(
          title: 'Banana',
          pressCallback: () {
            Navigator.of(context).pop();
            MToast.show(msg: 'Banana');
          }),
      CAction(
          title: 'Orange',
          pressCallback: () {
            Navigator.of(context).pop();
            MToast.show(msg: 'Orange');
          }),
      CAction(
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
              child: Text('action sheet'),
              onPressed: () => {
                CActionSheet.show(
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
              child: Text('custom action sheets'),
              onPressed: () => {
                CActionSheet.showCustom(
                    context: context,
                    actions: actions,
                    title: 'fruits',
                    subTitle: 'please choosed one of them')
              },
            )
          ],
        ),
      ),
    );
  }
}
