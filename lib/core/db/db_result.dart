import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_result.freezed.dart';

@freezed
class DbResult<T> with _$DbResult<T> {
  factory DbResult.success(T? data) = Success;
  factory DbResult.failure(String? error) = Failure;
}
