# example

A new Flutter UI Example application.

## Getting Started

1. [ActionSheet](/example/lib/components/action_sheet_demo.dart)

normal action sheet
```dart
    _pressed() {
        CActionSheet.show(
            title: 'yes or no',
            subTitle: 'please choose',
            context: context,
            callback: () {
              Navigator.pop(context);
              print('you choosed Yes');
            });
          }
```
     
custom action sheet

```dart
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
      

      _onPressed(){
      	ActionSheet.showCustom(
            context: context,
            actions: actions,
            title: 'fruits',
            subTitle: 'please choosed one of them');
      }

```                                        

2. [Toast](/example/lib/components/toast_demo.dart)

```dart
  // where you want to show toast,please do like this.
  void _pressed(String message, MPosition position) {
      MToast.show(
          msg: message, position: position, length: MToastLength.SHORT);
    }
```



