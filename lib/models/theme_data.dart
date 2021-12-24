import 'package:flutter/material.dart';

enum AppTheme {
  GreenLight,
  GreenDark,
  BlueLight,
  BlueDark,
}

final appThemeData = {
  AppTheme.GreenLight: ThemeData(
    appBarTheme: const AppBarTheme(color: Colors.lightGreen),
    brightness: Brightness.light,
    primaryColor: Colors.green,
  ),
  AppTheme.GreenDark: ThemeData(
    appBarTheme: const AppBarTheme(color: Colors.green),
    brightness: Brightness.dark,
    primaryColor: Colors.green[700],
  ),
  AppTheme.BlueLight: ThemeData(
    appBarTheme: const AppBarTheme(color: Colors.lightBlueAccent),
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  ),
  AppTheme.BlueDark: ThemeData(
    appBarTheme: const AppBarTheme(color: Colors.blue),
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700],
  ),
};
