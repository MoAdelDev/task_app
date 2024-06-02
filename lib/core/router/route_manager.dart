import 'package:flutter/material.dart';
import 'package:task_app/core/router/routes.dart';
import 'package:task_app/features/home/ui/screens/home_screen.dart';

class RouteManager {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return _getMaterialPageRoute(const HomeScreen());
    }
    return null;
  }

  MaterialPageRoute _getMaterialPageRoute(Widget screen) => MaterialPageRoute(
        builder: (context) => screen,
      );
}
