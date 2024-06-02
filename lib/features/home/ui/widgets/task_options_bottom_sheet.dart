import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/helpers/extensions.dart';
import 'package:task_app/core/helpers/spacing.dart';
import 'package:task_app/core/helpers/toasts.dart';
import 'package:task_app/core/widgets/custom_button.dart';
import 'package:task_app/features/home/logic/cubit/home_cubit.dart';

class TaskOptionsBottomSheet extends StatelessWidget {
  final int index;
  const TaskOptionsBottomSheet({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    HomeCubit cubit = context.read();
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        state.whenOrNull(
          updateTasksSuccess: (task) {
            showToast('Task Updated Successfully');
            context.pop();
          },
          updateTasksFailure: (message) {
            showToast(
              'Failed to update task, try again',
              isError: true,
            );
          },
        );
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 10.h,
        ),
        margin: EdgeInsets.only(
          bottom: 70.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 200.w,
              height: 5.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey,
              ),
            ),
            verticalSpace(20),
            CustomButton(
              onPressed: () {},
              label: 'Edit Task',
              height: 40.h,
            ),
            verticalSpace(20),
            CustomButton(
              onPressed: () {
                cubit.emitTaskStatusState(index);
              },
              label: 'Mark As Complete',
              height: 40.h,
              backgroundColor: context.colorScheme.secondary,
            ),
            verticalSpace(20),
            CustomButton(
              onPressed: () {},
              label: 'Delete Task',
              height: 40.h,
              backgroundColor: context.colorScheme.error,
            ),
          ],
        ),
      ),
    );
  }
}
