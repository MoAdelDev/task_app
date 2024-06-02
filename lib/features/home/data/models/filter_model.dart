import 'package:task_app/features/home/data/models/task_model.dart';

abstract class FilterModel {
  final String label;

  FilterModel(this.label);
  List<TaskModel> filterTask(List<TaskModel> tasks);
}

class FilterDone implements FilterModel {
  @override
  List<TaskModel> filterTask(List<TaskModel> tasks) {
    return tasks.where((element) => element.isDone).toList();
  }

  @override
  String get label => 'Done';
}

class FilterNotDone implements FilterModel {
  @override
  List<TaskModel> filterTask(List<TaskModel> tasks) {
    return tasks.where((element) => !element.isDone).toList();
  }

  @override
  String get label => 'Not Done';
}

class NotFilter implements FilterModel {
  @override
  List<TaskModel> filterTask(List<TaskModel> tasks) {
    return tasks;
  }

  @override
  String get label => 'All';
}
