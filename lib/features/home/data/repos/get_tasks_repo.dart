import 'package:hive/hive.dart';
import 'package:task_app/core/db/database_constants.dart';
import 'package:task_app/core/db/db_result.dart';
import 'package:task_app/features/home/data/models/task_model.dart';

class GetTasksRepo {
  Future<DbResult<List<TaskModel>>> getTasks() async {
    try {
      final tasksBox = Hive.box<TaskModel>(kTasksBox);
      final List<TaskModel> tasks =
          tasksBox.toMap().entries.map((e) => e.value).toList();
      return DbResult.success(tasks);
    } on HiveError catch (e) {
      return DbResult.failure(e.message);
    }
  }
}
