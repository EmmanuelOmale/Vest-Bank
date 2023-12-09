import 'package:flutter/material.dart';
import 'constants.dart';

ThemeData lightThemeData(BuildContext buildContext) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryAppColor,
    scaffoldBackgroundColor: Colors.white,
    unselectedWidgetColor: kPrimaryAppColor,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: kContentColorLightTheme),
    colorScheme: const ColorScheme.light(
        primary: kPrimaryAppColor, secondary: kPrimaryAppColor, error: kErrorColor),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: kContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: kContentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: kPrimaryAppColor),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext buildContext) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryAppColor,
    scaffoldBackgroundColor: kContentColorLightTheme,
    appBarTheme: appBarTheme,
    unselectedWidgetColor: kPrimaryAppColor,
    iconTheme: const IconThemeData(color: kContentColorDarkTheme),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: kPrimaryAppColor,
      secondary: kPrimaryAppColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kContentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: kContentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: kPrimaryAppColor),
      showUnselectedLabels: true,
    ),
  );
}

const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
