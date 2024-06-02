import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'task_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class TaskModel {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String dueDate;
  @HiveField(2)
  final bool isDone;

  TaskModel({required this.title, required this.dueDate, required this.isDone});

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}
