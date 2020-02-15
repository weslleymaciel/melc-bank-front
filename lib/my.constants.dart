import 'package:flutter/cupertino.dart';

class MyConstants extends InheritedWidget {
  static MyConstants of(BuildContext context) => context. dependOnInheritedWidgetOfExactType<MyConstants>();

  const MyConstants({Widget child, Key key}): super(key: key, child: child);

  final String successMessage = 'Some message';
  final double textLarge = 16;
  final double textMedium = 13;
  final double textSmall = 10;

  final double btnPaddingMedium = 10;

  @override
  bool updateShouldNotify(MyConstants oldWidget) => false;
}