import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:site_ludsc/constants.dart';
import 'package:site_ludsc/utils.dart';

class ThemeProvider extends ChangeNotifier {
  late bool? _isLightTheme;

  ThemeProvider() {
    _isLightTheme = spAdapter.getBool(key: spAdapter.lightTheme) ?? kInitSettingsLightTheme;
  }

  void toggleTheme() {
    _isLightTheme = !_isLightTheme!;
    spAdapter.setBool(key: spAdapter.lightTheme, value: _isLightTheme!);
    setSystemUIOverlayStyle();
    notifyListeners();
  }

  void setSystemUIOverlayStyle() {
    if (_isLightTheme!) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    }
  }

  bool get isLightTheme => _isLightTheme!;
}
