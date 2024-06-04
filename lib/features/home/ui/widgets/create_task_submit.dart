import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/core/helpers/extensions.dart';
import 'package:task_app/core/helpers/platforms.dart';
import 'package:task_app/core/helpers/spacing.dart';
import 'package:task_app/core/helpers/toasts.dart';
import 'package:task_app/core/widgets/custom_button.dart';
import 'package:task_app/features/home/logic/cubit/home_cubit.dart';
import 'package:task_app/features/home/ui/widgets/create_task_form.dart';

class CreateTaskSubmit extends StatelessWidget {
  const CreateTaskSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        state.whenOrNull(
          createTaskSuccess: (task) {
            if (isDesktop) context.pop();
            showToast('Task added successfully');
          },
          createTaskFailure: (message) {
            showToast('Failed to add task. try again', isError: true);
          },
          updateTasksSuccess: (task) {
            if (isDesktop) context.pop();

            showToast('Task updated successfully');
          },
          updateTasksFailure: (message) {
            showToast('Failed to update task. try again', isError: true);
          },
        );
      },
      builder: (context, state) {
        HomeCubit cubit = context.read();
        if (isMobile) {
          return CustomButton(
            onPressed: () => _onPressed(cubit, context),
            label: cubit.isCreateTaskFormHidden
                ? 'Create Task'
                : cubit.isEdit
                    ? 'Edit Task'
                    : 'Save Task',
            isLoading: cubit.isLoading,
          );
        }
        return IconButton(
          onPressed: () => _onPressed(cubit, context),
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                context.colorScheme.primary,
              ),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
          icon: const Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
        );
      },
    );
  }

  void _onPressed(HomeCubit cubit, BuildContext context) {
    if (isDesktop) {
      showDialog(
        context: context,
        builder: (_) {
          return BlocProvider.value(
            value: context.read<HomeCubit>(),
            child: AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CreateTaskForm(),
                  verticalSpace(10),
                  CustomButton(
                    onPressed: () {
                      if (cubit.isEdit) {
                        cubit.emitUpdateTaskState();
                      } else {
                        cubit.emitSaveTaskState();
                      }
                    },
                    label: cubit.isEdit ? 'Edit Task' : 'Save Task',
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else {
      if (cubit.isCreateTaskFormHidden) {
        cubit.emitChangeCreateTaskState(false);
      } else if (cubit.isEdit) {
        cubit.emitUpdateTaskState();
      } else {
        cubit.emitSaveTaskState();
      }
    }
  }
}
