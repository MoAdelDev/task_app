part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.selectTaskFilter(int index) = SelectTaskFilter;

  const factory HomeState.changeCreateTaskState(bool isFormHidded) =
      ChangeCreateTaskState;
}
