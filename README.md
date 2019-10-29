# flutter ui

A Flutter UI package.

# How to Use
1. add `flutter_ui` to your `pubspec.yaml`
2. if you want to use Material UI,the UI Component name Start with `M`
`import 'package:flutter_ui/material.dart';`, but if you 
3. if you want to use Cupertino UI,the UI Component name Start with `C`
`import 'package:flutter_ui/cupertino.dart'`;

# UI Feature
- `action sheet`
- `avatar`
- `badge`
- `button`
- `card`
- `checklist`
- `picker`
- `datetime picker`
- `divider`
- `header`
- `image`
- `input`
- `indicator`
- `infinite scroll`
- `load more`
- `message box`
- `picker`
- `pricing`
- `tooltip`
- `progress`
- `radio`
- `rating`
- `search`
- `slider`
- `social icon`
- `swipe`
- `switch`
- `toast`
- `markdown`
- `browser`

# Demo
1. [ActionSheet](/example/lib/components/action_sheet.dart)

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
      

      _onPressed(){
      	CActionSheet.showCustom(
            context: context,
            actions: actions,
            title: 'fruits',
            subTitle: 'please choosed one of them');
      }

```                                        

1. [Toast](/example/lib/components/toast.dart)

```dart
  // where you want to show toast,please do like this.
  void _pressed(String message, MPosition position) {
      MToast.show(
          msg: message, position: position, length: MToastLength.SHORT);
    }
```

