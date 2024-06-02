import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

  void emitSaveTaskState() {}
}
