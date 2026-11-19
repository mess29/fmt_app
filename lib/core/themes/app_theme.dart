import 'package:flutter/material.dart';
import 'package:fmt_app/core/constants/colors.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.lightBackground,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.appBarAndNavBar,
    foregroundColor: AppColors.lightText,
    iconTheme: IconThemeData(color: AppColors.iconColorDefault),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.appBarAndNavBar,
    selectedItemColor: AppColors.iconColorSelected,
    unselectedItemColor: AppColors.iconColorDefault,
  ),
  iconTheme: const IconThemeData(color: AppColors.iconColorDefault),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: AppColors.lightText),
    bodyLarge: TextStyle(color: AppColors.lightText),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.darkBackground,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.appBarAndNavBar,
    foregroundColor: AppColors.darkText,
    iconTheme: IconThemeData(color: AppColors.iconColorDefault),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.appBarAndNavBar,
    selectedItemColor: AppColors.iconColorSelected,
    unselectedItemColor: AppColors.iconColorDefault,
  ),
  iconTheme: const IconThemeData(color: AppColors.iconColorDefault),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: AppColors.darkText),
    bodyLarge: TextStyle(color: AppColors.darkText),
  ),
);
