import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'task_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class TaskModel {
  @HiveField(0)
  String title;
  @HiveField(1)
  String dueDate;
  @HiveField(2)
  bool isDone;

  TaskModel({required this.title, required this.dueDate, required this.isDone});

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}
