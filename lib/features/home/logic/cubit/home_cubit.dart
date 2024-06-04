import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:task_app/core/helpers/platforms.dart';
import 'package:task_app/core/sync/services/sync_service.dart';
import 'package:task_app/features/home/data/models/filter_model.dart';
import 'package:task_app/features/home/data/models/task_model.dart';
import 'package:task_app/features/home/data/repos/create_task_repo.dart';
import 'package:task_app/features/home/data/repos/get_tasks_repo.dart';
import 'package:task_app/features/home/data/repos/tasks_actions_repo.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final CreateTaskRepo _createTaskRepo;
  final GetTasksRepo _getTasksRepo;
  final TasksActionsRepo _tasksActionsRepo;
  final SyncService _syncService;
  HomeCubit(
    this._createTaskRepo,
    this._getTasksRepo,
    this._tasksActionsRepo,
    this._syncService,
  ) : super(const HomeState.initial());

  List<FilterModel> filters = [
    NotFilter(),
    FilterDone(),
    FilterNotDone(),
  ];

  int selectedFilterIndex = 0;
  void emitSelectFilterState(int index) {
    selectedFilterIndex = index;
    allTasks = filters[index].filterTask(originalTasks);
    emit(HomeState.selectTaskFilter(index));
  }

  bool isCreateTaskFormHidden = true;
  bool isEdit = false;
  int? taskIndexWhichUpdate;
  void emitChangeCreateTaskState(
    bool isHide, {
    bool isEdit = false,
    int? index,
  }) {
    if (isHide) {
      _clearControllers();
    }
    if (index != null) {
      this.isEdit = isEdit;
      taskIndexWhichUpdate = index;
      taskTitleController.text = allTasks[index].title;
      dueDateController.text = allTasks[index].dueDate;
    }
    if (isMobile) {
      isCreateTaskFormHidden = isHide;
    }
    emit(HomeState.changeCreateTaskState(isHide));
  }

  final formkey = GlobalKey<FormState>();
  final taskTitleController = TextEditingController();
  final dueDateController = TextEditingController();

  void emitSelectDueDateState(BuildContext context, {int? index}) async {
    DateTime currentDate = DateTime.now();
    if (index != null) {
      if (currentDate.day > DateTime.parse(dueDateController.text).day) {
        currentDate = DateTime.parse(dueDateController.text);
      }
    }
    DateTime? newDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
      currentDate: index != null
          ? DateTime.parse(dueDateController.text)
          : DateTime.now(),
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
    _syncService.syncTasks();
    emitChangeCreateTaskState(true);
  }

  void _emitCreateTaskFailure(String? message) =>
      emit(HomeState.createTaskFailure(message));

  void _clearControllers() {
    isEdit = false;
    taskIndexWhichUpdate = null;
    taskTitleController.text = '';
    dueDateController.text = '';
  }

  List<TaskModel> originalTasks = [];
  List<TaskModel> allTasks = [];

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
    allTasks = originalTasks;
    _syncService.syncTasks();
    emit(HomeState.getTasksSuccess(tasks));
  }

  void _emitGetTasksFailureState(String? message) {
    emit(HomeState.getTasksFailure(message));
  }

  void emitTaskStatusState(int index) async {
    emit(const HomeState.updateTasksLoading());
    final result = await _tasksActionsRepo.changeTaskStatus(
      allTasks[index],
      index,
    );
    result.when(
      success: (task) => _emitUpdateTaskStatusSuccessState(task, index),
      failure: _emitUpdateTaskFailureState,
    );
  }

  void emitUpdateTaskState() async {
    emit(const HomeState.updateTasksLoading());
    final result = await _tasksActionsRepo.updateTask(
      TaskModel(
        title: taskTitleController.text,
        dueDate: dueDateController.text,
        isDone: allTasks[taskIndexWhichUpdate!].isDone,
      ),
      taskIndexWhichUpdate!,
    );
    result.when(
      success: (data) =>
          _emitUpdateTaskStatusSuccessState(data, taskIndexWhichUpdate!),
      failure: _emitUpdateTaskFailureState,
    );
    emitChangeCreateTaskState(true);
  }

  void _emitUpdateTaskStatusSuccessState(TaskModel? task, int index) {
    if (task == null) return;
    allTasks[index] = task;
    _syncService.syncTasks();
    emit(HomeState.updateTasksSuccess(task));
  }

  void _emitUpdateTaskFailureState(String? message) {
    emit(HomeState.updateTasksFailure(message));
  }

  void emitDeleteTaskState(int index) async {
    emit(const HomeState.deleteTasksLoading());
    final result = await _tasksActionsRepo.deleteTask(allTasks[index]);
    result.when(
      success: _emitDeleteTaskSucess,
      failure: _emitDeletetaskFailure,
    );
  }

  void _emitDeleteTaskSucess(TaskModel? task) async {
    originalTasks.remove(task);
    allTasks.remove(task);
    _syncService.syncTasks();
    emit(HomeState.deleteTasksSuccess(task?.key ?? Random().nextInt(1000)));
  }

  void _emitDeletetaskFailure(String? message) {
    emit(HomeState.deleteTasksFailure(message));
  }
}
