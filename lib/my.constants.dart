import 'package:flutter/cupertino.dart';

class MyConstants extends InheritedWidget {
  static MyConstants of(BuildContext context) => context. dependOnInheritedWidgetOfExactType<MyConstants>();

  const MyConstants({Widget child, Key key}): super(key: key, child: child);

  final String successMessage = 'Some message';
  final double textLarge = 20;
  final double textMedium = 15;
  final double textSmall = 12;

  final double btnPaddingMedium = 10;

  @override
  bool updateShouldNotify(MyConstants oldWidget) => false;
}