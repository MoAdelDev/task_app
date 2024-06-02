import 'package:get_it/get_it.dart';
import 'package:task_app/core/router/route_manager.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton(() => RouteManager());
}
