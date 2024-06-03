import 'package:hive/hive.dart';
import 'package:task_app/core/db/database_constants.dart';
import 'package:task_app/core/db/db_result.dart';
import 'package:task_app/features/home/data/models/task_model.dart';

class TasksActionsRepo {
  Future<DbResult<TaskModel>> changeTaskStatus(
    TaskModel taskModel,
    int index,
  ) async {
    try {
      final tasksBox = Hive.box<TaskModel>(kTasksBox);
      taskModel.isDone = !taskModel.isDone;
      taskModel.lastUpdated = DateTime.now();
      taskModel.isSynced = false;
      await tasksBox.putAt(index, taskModel);
      return DbResult.success(taskModel);
    } on HiveError catch (e) {
      return DbResult.failure(e.message);
    }
  }

  Future<DbResult<TaskModel>> updateTask(
    TaskModel taskModel,
    int index,
  ) async {
    try {
      final tasksBox = Hive.box<TaskModel>(kTasksBox);
      taskModel.lastUpdated = DateTime.now();
      taskModel.isSynced = false;
      await tasksBox.putAt(index, taskModel);
      return DbResult.success(taskModel);
    } on HiveError catch (e) {
      return DbResult.failure(e.message);
    }
  }

  Future<DbResult<TaskModel>> deleteTask(
    TaskModel task,
  ) async {
    try {
      task.isDeleted = true;
      task.isSynced = false;
      await task.save();
      return DbResult.success(task);
    } on HiveError catch (e) {
      return DbResult.failure(e.message);
    }
  }
}
