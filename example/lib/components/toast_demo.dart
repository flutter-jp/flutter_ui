import 'package:flutter/material.dart';
import 'package:flutter_ui/material.dart';

class Toast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _pressed(String message, MPosition position) {
      MToast.show(msg: message, position: position, length: MToastLength.SHORT);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('toast'),
      ),
      body: Center(
          child: GridView.count(
        crossAxisCount: 1,
        padding: EdgeInsets.all(10),
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 8 / 1,
        children: <Widget>[
          RaisedButton(
            child: Text('top toast'),
            onPressed: () => _pressed('top toast', MPosition.TOP),
          ),
          RaisedButton(
            child: Text('center toast'),
            onPressed: () => _pressed('center toast', MPosition.CENTER),
          ),
          RaisedButton(
            child: Text('bottom toast'),
            onPressed: () => _pressed('bottom toast', MPosition.BOTTOM),
          ),
          RaisedButton(
            child: Text('cancel'),
            onPressed: () => MToast.cancel(),
          )
        ],
      )),
    );
  }
}
