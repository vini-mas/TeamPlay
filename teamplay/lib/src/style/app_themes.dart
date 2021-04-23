import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:teamplay/src/style/app_colors.dart';

class AppThemes {
  static ThemeData light = lightTheme;
  static ThemeData dark = darkTheme;
}

ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: AppColors.Light.primary,
    backgroundColor: AppColors.Light.mainBackground,
    accentColor: AppColors.Light.primary2,
    textTheme: TextTheme(
        headline6: TextStyle(
            color: AppColors.Light.primary,
            fontSize: 70,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(AppColors.Light.primary))),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.Light.background));

ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: AppColors.Dark.primary,
    backgroundColor: AppColors.Dark.mainBackground,
    accentColor: AppColors.Dark.primary2,
    textTheme: TextTheme(
        headline6: TextStyle(
            color: AppColors.Dark.primary,
            fontSize: 70,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(AppColors.Dark.primary))),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.Dark.background));
