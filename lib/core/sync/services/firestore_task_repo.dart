import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:task_app/features/home/data/models/task_model.dart';

class FirestoreTaskRepository {
  final FirebaseFirestore _firestore;

  FirestoreTaskRepository(this._firestore);

  Future<void> addOrUpdateTask(TaskModel task) async {
    var taskRef = _firestore.collection('tasks').doc(task.key.toString());
    await taskRef.set(task.toJson(), SetOptions(merge: true));
  }

  Future<void> deleteTask(TaskModel task) async {
    var taskRef = _firestore.collection('tasks').doc(task.key.toString());
    await taskRef.delete();
  }
}
