import 'package:ady_connect/shared/resources/app_colors.dart';
import 'package:ady_connect/shared/resources/app_strings.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get appTheme {
    return ThemeData(
      fontFamily: AppStrings.kFontFamily,
      brightness: Brightness.light,
      primaryColor: AppColors.kBlue,
      primaryColorDark: AppColors.kBlueDark,
    );
  }
}
