import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/style/color_manager.dart';
import 'package:task_app/core/style/font_weight_helper.dart';

class ThemeManager {
  ThemeManager._();
  static ThemeData light(String locale) => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(
          primary: ColorLightManager.primary,
          secondary: ColorLightManager.secondary,
          onPrimary: ColorLightManager.onPrimary,
          onSecondary: ColorLightManager.onSecondary,
          onSurface: ColorLightManager.onSurface,
          onError: ColorLightManager.onError,
          surface: ColorLightManager.surface,
          brightness: Brightness.light,
          error: ColorLightManager.error,
          outline: ColorLightManager.grey.withOpacity(0.3),
          outlineVariant: ColorLightManager.grey,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: ColorLightManager.background,
          foregroundColor: ColorLightManager.onBackground,
          surfaceTintColor: ColorLightManager.background,
          centerTitle: false,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: ColorLightManager.onBackground,
          ),
          actionsIconTheme: const IconThemeData(
            color: ColorLightManager.onBackground,
            size: 35,
          ),
          titleTextStyle: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 20.sp,
          ),
        ),
        scaffoldBackgroundColor: ColorLightManager.background,
        fontFamily: locale == 'ar' ? 'Cairo' : 'SourceSans3',
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 24.sp,
          ),
          titleMedium: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 20.sp,
          ),
          titleSmall: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 16.sp,
          ),
          bodyLarge: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 16.sp,
          ),
          bodyMedium: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 14.sp,
          ),
          bodySmall: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 12.sp,
          ),
          labelLarge: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 16.sp,
          ),
          labelMedium: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 14.sp,
          ),
          labelSmall: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 12.sp,
          ),
          displayLarge: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 40.sp,
          ),
          displayMedium: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 32.sp,
          ),
          displaySmall: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 24.sp,
          ),
          headlineLarge: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 32.sp,
          ),
          headlineMedium: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 24.sp,
          ),
          headlineSmall: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 20.sp,
          ),
        ),
      );

  static ThemeData dark(String locale) => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.dark(
          primary: ColorDarkManager.primary,
          secondary: ColorDarkManager.secondary,
          onPrimary: ColorDarkManager.onPrimary,
          onSecondary: ColorDarkManager.onSecondary,
          onSurface: ColorDarkManager.onSurface,
          onError: ColorDarkManager.onError,
          surface: ColorDarkManager.surface,
          error: ColorDarkManager.error,
          brightness: Brightness.dark,
          outline: ColorLightManager.grey.withOpacity(0.3),
          outlineVariant: ColorLightManager.grey,
        ),
        fontFamily: locale == 'ar' ? 'Cairo' : 'SourceSans3',
        appBarTheme: AppBarTheme(
          backgroundColor: ColorDarkManager.background,
          foregroundColor: ColorDarkManager.background,
          surfaceTintColor: ColorDarkManager.background,
          elevation: 0,
          centerTitle: false,
          iconTheme: const IconThemeData(
            color: ColorDarkManager.onBackground,
          ),
          actionsIconTheme: const IconThemeData(
            color: ColorDarkManager.onBackground,
            size: 40,
          ),
          titleTextStyle: TextStyle(
            color: ColorDarkManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 20.sp,
          ),
        ),
        scaffoldBackgroundColor: ColorDarkManager.background,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: ColorDarkManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 24.sp,
          ),
          titleMedium: TextStyle(
            color: ColorDarkManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 20.sp,
          ),
          titleSmall: TextStyle(
            color: ColorDarkManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 16.sp,
          ),
          bodyLarge: TextStyle(
            color: ColorDarkManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 16.sp,
          ),
          bodyMedium: TextStyle(
            color: ColorDarkManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 14.sp,
          ),
          bodySmall: TextStyle(
            color: ColorDarkManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 12.sp,
          ),
          labelLarge: TextStyle(
            color: ColorDarkManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 16.sp,
          ),
          labelMedium: TextStyle(
            color: ColorDarkManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 14.sp,
          ),
          labelSmall: TextStyle(
            color: ColorDarkManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 12.sp,
          ),
          displayLarge: TextStyle(
            color: ColorDarkManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 40.sp,
          ),
          displayMedium: TextStyle(
            color: ColorDarkManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 32.sp,
          ),
          displaySmall: TextStyle(
            color: ColorDarkManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 24.sp,
          ),
          headlineLarge: TextStyle(
            color: ColorDarkManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 32.sp,
          ),
          headlineMedium: TextStyle(
            color: ColorDarkManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 24.sp,
          ),
          headlineSmall: TextStyle(
            color: ColorDarkManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 20.sp,
          ),
        ),
      );
}
