import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/helpers/extensions.dart';
import 'package:task_app/core/helpers/platforms.dart';
import 'package:task_app/core/helpers/spacing.dart';
import 'package:task_app/core/helpers/toasts.dart';
import 'package:task_app/core/widgets/custom_button.dart';
import 'package:task_app/core/widgets/custom_text.dart';
import 'package:task_app/features/home/logic/cubit/home_cubit.dart';
import 'package:task_app/features/home/ui/widgets/create_task_form.dart';

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
            if (isMobile) {
              context.pop();
            }
          },
          updateTasksFailure: (message) {
            showToast(
              'Failed to update task, try again',
              isError: true,
            );
          },
          deleteTasksSuccess: (task) {
            showToast('Task Deleted Successfully');
            // For Alert Dialog
            context.pop();
            // For Bottom Sheet Actions
            context.pop();
          },
          deleteTasksFailure: (message) {
            showToast(
              'Failed to delete task, try again',
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
              onPressed: () {
                context.pop();
                if (isDesktop) {
                  showDialog(
                    context: context,
                    builder: (_) {
                      cubit.emitChangeCreateTaskState(
                        false,
                        isEdit: true,
                        index: index,
                      );
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
                  cubit.emitChangeCreateTaskState(
                    false,
                    isEdit: true,
                    index: index,
                  );
                }
              },
              label: 'Edit Task',
              height: 40.h,
            ),
            verticalSpace(20),
            CustomButton(
              onPressed: () {
                cubit.emitTaskStatusState(index);
              },
              label: cubit.allTasks[index].isDone
                  ? 'Mark As Not Done'
                  : 'Mark As Done',
              height: 40.h,
              backgroundColor: context.colorScheme.secondary,
            ),
            verticalSpace(20),
            CustomButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: CustomText(
                        text: 'Delete Task',
                        style: context.textTheme.titleSmall,
                        textAlign: TextAlign.start,
                      ),
                      content: CustomText(
                        text: 'Are you want to delete this task ?',
                        style: context.textTheme.bodyMedium,
                        textAlign: TextAlign.start,
                      ),
                      actionsPadding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 5.h,
                      ),
                      actions: [
                        Row(
                          children: [
                            Expanded(
                              child: CustomButton(
                                height: 30.h,
                                onPressed: () {
                                  cubit.emitDeleteTaskState(index);
                                },
                                label: 'Delete',
                                backgroundColor: context.colorScheme.error,
                              ),
                            ),
                            horizontalSpace(5),
                            Expanded(
                              child: CustomButton(
                                height: 30.h,
                                onPressed: () {
                                  context.pop();
                                },
                                label: 'Cancel',
                              ),
                            ),
                          ],
                        ),
                      ],
                      actionsAlignment: MainAxisAlignment.center,
                      actionsOverflowDirection: VerticalDirection.down,
                      actionsOverflowAlignment: OverflowBarAlignment.start,
                      actionsOverflowButtonSpacing: 3,
                    );
                  },
                );
              },
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
