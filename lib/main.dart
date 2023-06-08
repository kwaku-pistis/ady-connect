import 'package:ady_connect/features/auth/login.dart';
import 'package:ady_connect/shared/resources/app_strings.dart';
import 'package:ady_connect/shared/resources/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.kAppName,
          theme: AppTheme.appTheme,
          home: const Login(),
        );
      },
    );
  }
}
