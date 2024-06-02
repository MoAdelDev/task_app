import 'package:hive_flutter/hive_flutter.dart';
import 'package:task_app/core/db/database_constants.dart';
import 'package:task_app/features/home/data/models/task_model.dart';

class HiveManager {
  HiveManager._();
  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter<TaskModel>(TaskModelAdapter());
    Hive.openBox<TaskModel>(kTasksBox);
  }
}
