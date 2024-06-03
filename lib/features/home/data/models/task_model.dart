import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'task_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class TaskModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String dueDate;
  @HiveField(2)
  bool isDone;
  @HiveField(3)
  bool isSynced;
  @HiveField(4)
  bool isDeleted;
  @HiveField(5)
  DateTime? lastUpdated;
  @HiveField(6)
  DateTime? syncedAt;

  TaskModel({
    required this.title,
    required this.dueDate,
    this.isDone = false,
    this.isSynced = false,
    this.lastUpdated,
    this.isDeleted = false,
    this.syncedAt,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}
