import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/core/di/dependency_injection.dart';
import 'package:task_app/core/router/routes.dart';
import 'package:task_app/features/home/logic/cubit/home_cubit.dart';
import 'package:task_app/features/home/ui/screens/home_screen.dart';

class RouteManager {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return _getMaterialPageRoute(
          BlocProvider(
            create: (context) => getIt<HomeCubit>(),
            child: const HomeScreen(),
          ),
        );
    }
    return null;
  }

  MaterialPageRoute _getMaterialPageRoute(Widget screen) => MaterialPageRoute(
        builder: (context) => screen,
      );
}
