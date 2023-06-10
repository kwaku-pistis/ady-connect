import 'package:ady_connect/shared/resources/app_colors.dart';
import 'package:ady_connect/shared/resources/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData get appTheme {
    return ThemeData(
      fontFamily: AppStrings.kFontFamily,
      brightness: Brightness.light,
      primaryColor: AppColors.kBlue,
      primaryColorDark: AppColors.kBlueDark,
      textTheme: textTheme,
    );
  }

  static TextTheme get textTheme {
    return TextTheme(
      headlineMedium: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 17.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.kGrey,
      ),
      bodySmall: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.kGrey2,
      ),
    );
  }
}
