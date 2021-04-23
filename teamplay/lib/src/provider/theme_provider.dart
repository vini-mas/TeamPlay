import 'package:flutter/material.dart';
import 'package:teamplay/src/style/app_colors.dart';
import 'package:teamplay/src/style/app_themes.dart';

enum ThemeTypes { Light, Dark }

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme = AppThemes.dark;
  ThemeTypes _themeType = ThemeTypes.Dark;

  toggleTheme() {
    if (_themeType == ThemeTypes.Dark) {
      currentTheme = lightTheme;
      _themeType = ThemeTypes.Light;
      return notifyListeners();
    }

    if (_themeType == ThemeTypes.Light) {
      currentTheme = darkTheme;
      _themeType = ThemeTypes.Dark;
      return notifyListeners();
    }
  }

  ThemeColors getColors() {
    return AppColors(_themeType).getCurrent();
  }
}
