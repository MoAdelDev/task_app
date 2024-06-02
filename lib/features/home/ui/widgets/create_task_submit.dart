import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/core/helpers/toasts.dart';
import 'package:task_app/core/widgets/custom_button.dart';
import 'package:task_app/features/home/logic/cubit/home_cubit.dart';

class CreateTaskSubmit extends StatelessWidget {
  const CreateTaskSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        state.whenOrNull(
          createTaskSuccess: (task) {
            showToast('Task added successfully');
          },
          createTaskFailure: (message) {
            log(message ?? '');
            showToast('Failed to add task. try again');
          },
        );
      },
      builder: (context, state) {
        HomeCubit cubit = context.read();
        return CustomButton(
          onPressed: () {
            if (cubit.isCreateTaskFormHidden) {
              cubit.emitChangeCreateTaskState(false);
            } else {
              cubit.emitSaveTaskState();
            }
          },
          label: cubit.isCreateTaskFormHidden ? 'Create Task' : 'Save Task',
          isLoading: cubit.isLoading,
        );
      },
    );
  }
}
