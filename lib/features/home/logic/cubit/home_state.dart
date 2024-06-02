part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.selectTaskFilter(int index) = SelectTaskFilter;

  const factory HomeState.changeCreateTaskState(bool isFormHidded) =
      ChangeCreateTaskState;

  const factory HomeState.createTaskLoading() = CreateTaskLoading;

  const factory HomeState.createTaskSuccess(TaskModel? task) =
      CreateTaskSuccess;

  const factory HomeState.createTaskFailure(String? message) =
      CreateTaskFailure;

  const factory HomeState.getTasksLoading() = GetTasksLoading;

  const factory HomeState.getTasksSuccess(List<TaskModel>? task) =
      GetTasksSuccess;

  const factory HomeState.getTasksFailure(String? message) = GetTasksFailure;
}
