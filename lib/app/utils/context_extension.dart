import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  ThemeData get theme => Theme.of(this);

  Color get primaryColor => Theme.of(this).primaryColor;

  EdgeInsets get padding => MediaQuery.paddingOf(this);
}
