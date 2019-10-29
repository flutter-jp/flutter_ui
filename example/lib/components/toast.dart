import 'package:flutter/material.dart';
import 'package:flutter_ui/material.dart';

class Toast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
	  return Scaffold(
		  appBar: AppBar(
			  title: Text('toast'),
		  ),
		  body: Center(
			  child: Column(
				  mainAxisAlignment: MainAxisAlignment.center,
				  children: <Widget>[
					  RaisedButton(
						  child: Text('top toast'),
						  onPressed: () => FjToast.show(
								  msg: 'top test',
								  position: FjPosition.TOP,
								  length: FjToastLength.SHORT),
					  ),
					  RaisedButton(
						  child: Text('center toast'),
						  onPressed: () => FjToast.show(
								  msg: 'center test',
								  position: FjPosition.CENTER,
								  length: FjToastLength.SHORT),
					  ),
					  RaisedButton(
						  child: Text('bottom toast'),
						  onPressed: () => FjToast.show(
								  msg: 'bottom test',
								  position: FjPosition.BOTTOM,
								  length: FjToastLength.SHORT),
					  ),
					  RaisedButton(
						  child: Text('cancel'),
						  onPressed: () => FjToast.cancel(),
					  )
				  ],
			  ),
		  ),
	  );
  }
}
