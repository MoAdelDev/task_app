import 'package:flutter/material.dart';
import 'package:task_app/core/style/color_manager.dart';
import 'package:task_app/core/style/font_weight_helper.dart';

class ThemeManager {
  ThemeManager._();
  static ThemeData light() => ThemeData(
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
          shadow: ColorLightManager.shadowColor,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorLightManager.background,
          foregroundColor: ColorLightManager.onBackground,
          surfaceTintColor: ColorLightManager.background,
          centerTitle: false,
          elevation: 0,
          iconTheme: IconThemeData(
            color: ColorLightManager.onBackground,
          ),
          actionsIconTheme: IconThemeData(
            color: ColorLightManager.onBackground,
            size: 35,
          ),
          titleTextStyle: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 20,
          ),
        ),
        scaffoldBackgroundColor: ColorLightManager.background,
        fontFamily: 'Inter',
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 30,
          ),
          titleMedium: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 26,
          ),
          titleSmall: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 20,
          ),
          bodyLarge: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 15,
          ),
          bodyMedium: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 13,
          ),
          bodySmall: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 12,
          ),
          labelLarge: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 16,
          ),
          labelMedium: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 14,
          ),
          labelSmall: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.regular,
            fontSize: 12,
          ),
          displayLarge: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 40,
          ),
          displayMedium: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 32,
          ),
          displaySmall: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 24,
          ),
          headlineLarge: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 32,
          ),
          headlineMedium: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 24,
          ),
          headlineSmall: TextStyle(
            color: ColorLightManager.onBackground,
            fontWeight: FontWeightHelper.bold,
            fontSize: 20,
          ),
        ),
      );
}
