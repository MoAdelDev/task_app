import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:task_app/features/home/data/models/task_model.dart';
import 'package:task_app/features/home/data/repos/create_task_repo.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final CreateTaskRepo _createTaskRepo;
  HomeCubit(this._createTaskRepo) : super(const HomeState.initial());

  List<String> filters = [
    'All',
    'Done',
    'Not Done',
  ];

  int selectedFilterIndex = 0;
  void emitSelectFilterState(int index) {
    selectedFilterIndex = index;
    emit(HomeState.selectTaskFilter(index));
  }

  bool isCreateTaskFormHidden = true;

  void emitChangeCreateTaskState(bool isHide) {
    isCreateTaskFormHidden = isHide;
    emit(HomeState.changeCreateTaskState(isHide));
  }

  final formkey = GlobalKey<FormState>();
  final taskTitleController = TextEditingController();
  final dueDateController = TextEditingController();

  void emitSelectDueDateState(BuildContext context) async {
    DateTime? newDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
      currentDate: DateTime.now(),
    );

    if (newDate == null) return;
    String formattedDate = DateFormat('EEE. dd-MM-yyyy').format(newDate);
    dueDateController.text = formattedDate;
  }

  bool isLoading = false;
  void emitSaveTaskState() async {
    if (formkey.currentState!.validate()) {
      isLoading = true;
      emit(const HomeState.createTaskLoading());
      TaskModel taskModel = TaskModel(
        title: taskTitleController.text,
        dueDate: dueDateController.text,
        isDone: false,
      );
      final result = await _createTaskRepo.createTask(taskModel);
      isLoading = false;
      result.when(
        success: emitCreateTaskSuccess,
        failure: emitCreateTaskFailure,
      );
    }
  }

  void emitCreateTaskSuccess(TaskModel? taskModel) {
    emit(HomeState.createTaskSuccess(taskModel));
    clearControllers();
    emitChangeCreateTaskState(true);
  }

  void emitCreateTaskFailure(String? message) =>
      emit(HomeState.createTaskFailure(message));

  void clearControllers() {
    taskTitleController.text = '';
    dueDateController.text = '';
  }
}
