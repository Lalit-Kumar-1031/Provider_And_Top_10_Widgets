import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ThemeProvider extends ChangeNotifier
{
  var _thememode=ThemeMode.light;

  ThemeMode get thememode=>_thememode;

  void setTheme(thememode)
  {
    _thememode=thememode;
    notifyListeners();
  }
}