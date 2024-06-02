import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:task_app/features/home/data/models/task_model.dart';
import 'package:task_app/features/home/data/repos/create_task_repo.dart';
import 'package:task_app/features/home/data/repos/get_tasks_repo.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final CreateTaskRepo _createTaskRepo;
  final GetTasksRepo _getTasksRepo;
  HomeCubit(
    this._createTaskRepo,
    this._getTasksRepo,
  ) : super(const HomeState.initial());

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
        success: _emitCreateTaskSuccess,
        failure: _emitCreateTaskFailure,
      );
    }
  }

  void _emitCreateTaskSuccess(TaskModel? taskModel) {
    if (taskModel != null) originalTasks.add(taskModel);
    emit(HomeState.createTaskSuccess(taskModel));
    _clearControllers();
    emitChangeCreateTaskState(true);
  }

  void _emitCreateTaskFailure(String? message) =>
      emit(HomeState.createTaskFailure(message));

  void _clearControllers() {
    taskTitleController.text = '';
    dueDateController.text = '';
  }

  List<TaskModel> originalTasks = [];
  void emitGetTasksState() async {
    emit(const HomeState.getTasksLoading());
    final result = await _getTasksRepo.getTasks();
    result.when(
      success: _emitGetTasksSuccessState,
      failure: _emitGetTasksFailureState,
    );
  }

  void _emitGetTasksSuccessState(List<TaskModel>? tasks) {
    originalTasks = tasks ?? [];
    emit(HomeState.getTasksSuccess(tasks));
  }

  void _emitGetTasksFailureState(String? message) {
    emit(HomeState.getTasksFailure(message));
  }
}
