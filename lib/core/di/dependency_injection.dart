import 'package:get_it/get_it.dart';
import 'package:task_app/core/router/route_manager.dart';
import 'package:task_app/features/home/data/repos/create_task_repo.dart';
import 'package:task_app/features/home/logic/cubit/home_cubit.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // Router
  getIt.registerLazySingleton(() => RouteManager());

  // Home
  getIt.registerLazySingleton(() => CreateTaskRepo());
  getIt.registerFactory(() => HomeCubit(getIt()));
}
