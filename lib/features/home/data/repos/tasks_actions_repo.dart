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
      await tasksBox.putAt(index, taskModel);
      return DbResult.success(taskModel);
    } on HiveError catch (e) {
      return DbResult.failure(e.message);
    }
  }
}