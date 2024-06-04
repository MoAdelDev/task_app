import 'package:hive_flutter/hive_flutter.dart';
import 'package:task_app/core/db/database_constants.dart';
import 'package:task_app/core/db/db_result.dart';
import 'package:task_app/features/home/data/models/task_model.dart';

class CreateTaskRepo {
  Future<DbResult<TaskModel>> createTask(TaskModel task) async {
    try {
      final tasksBox = Hive.box<TaskModel>(kTasksBox);
      await tasksBox.add(task);
      return DbResult.success(task);
    } on HiveError catch (e) {
      return DbResult.failure(e.message);
    }
  }
}
