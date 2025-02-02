import 'package:app_flutter_mimusica/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.darkPrimary,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.darkAccent,
      brightness: Brightness.dark,
      secondary: AppColors.darkAccent,
    ),
    scaffoldBackgroundColor: Color(0xFF1C1C1E),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: Color(0xFFE5E5EA)),
      bodySmall: TextStyle(color: Color(0xFFE5E5EA)),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: AppColors.darkAccent,
      inactiveTrackColor: AppColors.darkSecondary,
      thumbColor: AppColors.darkAccent,
    ),
  );

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.lightPrimary,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.lightAccent,
      brightness: Brightness.light,
      secondary: AppColors.lightAccent,
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: AppColors.lightAccent,
      inactiveTrackColor: AppColors.lightSecondary,
      thumbColor: AppColors.lightAccent,
    ),
  );
}
