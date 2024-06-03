import 'package:hive/hive.dart';
import 'package:task_app/core/sync/services/connection_service.dart';
import 'package:task_app/core/sync/services/firestore_task_repo.dart';
import 'package:task_app/features/home/data/models/task_model.dart';

class SyncService {
  final ConnectivityService _connectivityService;
  final FirestoreTaskRepository _taskRepository;
  final Box<TaskModel> _taskBox;

  SyncService(this._connectivityService, this._taskRepository, this._taskBox);

  Future<void> syncTasks() async {
    if (await _connectivityService.hasConnection()) {
      List<TaskModel> tasks = _taskBox.values.toList();

      for (var task in tasks) {
        if (task.isDeleted) {
          await _taskRepository.deleteTask(task);
          await task.delete();
        } else if (!task.isSynced ||
            (task.lastUpdated != null &&
                task.syncedAt != null &&
                task.lastUpdated!.isAfter(task.syncedAt!))) {
          await _taskRepository.addOrUpdateTask(task);
          task.isSynced = true;
          task.syncedAt = DateTime.now();
          await task.save();
        }
      }
    }
  }
}
