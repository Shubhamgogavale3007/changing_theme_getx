import 'package:flutter/material.dart';

class changeTheme {
  /// Dark Theme
  ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.greenAccent, // background (button) color
        onPrimary: Colors.white, // foreground (text) color
      ),
    ),
    textTheme: TextTheme(
      bodyText2: TextStyle(color: Colors.limeAccent),
    ),
  );

  /// Light Theme
  ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.black,
    primarySwatch: Colors.orange,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange),
  );
}
