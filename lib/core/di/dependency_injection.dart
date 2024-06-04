import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:task_app/core/db/database_constants.dart';
import 'package:task_app/core/router/route_manager.dart';
import 'package:task_app/core/sync/services/connection_service.dart';
import 'package:task_app/core/sync/services/firestore_task_repo.dart';
import 'package:task_app/core/sync/services/sync_service.dart';
import 'package:task_app/features/home/data/models/task_model.dart';
import 'package:task_app/features/home/data/repos/create_task_repo.dart';
import 'package:task_app/features/home/data/repos/get_tasks_repo.dart';
import 'package:task_app/features/home/data/repos/tasks_actions_repo.dart';
import 'package:task_app/features/home/logic/cubit/home_cubit.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // Router
  getIt.registerLazySingleton(() => RouteManager());

  // Sync Service
  getIt.registerLazySingleton(() => Hive.box<TaskModel>(kTasksBox));
  getIt.registerLazySingleton(() => FirebaseFirestore.instance);
  getIt.registerLazySingleton(() => FirestoreTaskRepository(getIt()));
  getIt.registerLazySingleton(() => Connectivity());
  getIt.registerLazySingleton(() => ConnectivityService());
  getIt.registerLazySingleton(() => SyncService(
        getIt(),
        getIt(),
        getIt(),
      ));

  // Home && Tasks
  getIt.registerLazySingleton(() => CreateTaskRepo());
  getIt.registerLazySingleton(() => GetTasksRepo());
  getIt.registerLazySingleton(() => TasksActionsRepo());
  getIt.registerFactory(() => HomeCubit(
        getIt(),
        getIt(),
        getIt(),
        getIt(),
      ));
}
