import 'package:flutter/material.dart';

extension ThemeEx on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension NavigationEx<T> on BuildContext {
  void pop() => Navigator.pop(this);

  Future<T?> push(String routeName, {Object? args}) => Navigator.pushNamed(
        this,
        routeName,
        arguments: args,
      );

  Future<T?> pushAndRemoveUntil(String routeName, {Object? args}) =>
      Navigator.pushNamedAndRemoveUntil(
        this,
        routeName,
        (route) => false,
        arguments: args,
      );

  Future<T?> pushReplacment(String routeName, {Object? args}) =>
      Navigator.pushReplacementNamed(this, routeName, arguments: args);
}

extension MediaQueryEx on BuildContext {
  double get height => MediaQuery.sizeOf(this).height;
  double get width => MediaQuery.sizeOf(this).width;
}

extension TimeOfDayExtension on TimeOfDay {
  bool isLessThan(TimeOfDay other) {
    bool result = false;
    int startTimeInt = (hour * 60 + minute) * 60;
    int endTimeInt = (other.hour * 60 + other.minute) * 60;
    if (endTimeInt > startTimeInt) {
      result = true;
    } else {
      result = false;
    }
    return result;
  }
}
