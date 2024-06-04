import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/di/dependency_injection.dart';
import 'package:task_app/core/router/route_manager.dart';
import 'package:task_app/core/router/routes.dart';
import 'package:task_app/core/style/theme_manager.dart';

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeManager.light(),
        initialRoute: Routes.home,
        onGenerateRoute: getIt<RouteManager>().onGenerateRoute,
      ),
    );
  }
}
