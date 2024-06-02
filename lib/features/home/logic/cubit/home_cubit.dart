import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

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

  void emitSaveTaskState() {
    if (formkey.currentState!.validate()) {}
  }
}
