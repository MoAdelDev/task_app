import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/core/helpers/extensions.dart';
import 'package:task_app/core/helpers/platforms.dart';
import 'package:task_app/core/helpers/spacing.dart';
import 'package:task_app/core/style/font_weight_helper.dart';
import 'package:task_app/core/widgets/custom_tap.dart';
import 'package:task_app/core/widgets/custom_text.dart';
import 'package:task_app/core/widgets/custom_text_field.dart';
import 'package:task_app/features/home/logic/cubit/home_cubit.dart';

class CreateTaskForm extends StatelessWidget {
  const CreateTaskForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        HomeCubit cubit = context.read();
        return Form(
          key: cubit.formkey,
          child: FadeInUp(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomText(
                        text: 'Create New Task',
                        style: context.textTheme.bodyLarge,
                        fontWeight: FontWeightHelper.bold,
                      ),
                    ),
                    CustomTap(
                      onTap: () {
                        if (isDesktop) {
                          context.pop();
                        } else {
                          cubit.emitChangeCreateTaskState(true);
                        }
                      },
                      child: Icon(
                        Icons.close,
                        color: context.colorScheme.error,
                      ),
                    ),
                  ],
                ),
                verticalSpace(20),
                CustomTextField(
                  controller: cubit.taskTitleController,
                  hintText: 'Task Title',
                  errorMsg: 'Please enter task title',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                ),
                verticalSpace(10),
                CustomTextField(
                  controller: cubit.dueDateController,
                  hintText: 'Due Date',
                  errorMsg: 'Please select due date',
                  keyboardType: TextInputType.text,
                  readOnly: true,
                  textInputAction: TextInputAction.next,
                  onTap: () {
                    cubit.emitSelectDueDateState(context);
                  },
                ),
                if (isAndroid) ...[
                  Row(
                    children: [
                      Checkbox(
                        value: cubit.isGoogleCalendarChecked,
                        onChanged: (value) {
                          cubit.emitGoogleCalendarCheckState();
                        },
                      ),
                      Expanded(
                        child: CustomText(
                          text: 'Send this task to Google calendar',
                          style: context.textTheme.bodySmall,
                          fontWeight: FontWeightHelper.bold,
                        ),
                      ),
                    ],
                  ),
                ],
                verticalSpace(30),
              ],
            ),
          ),
        );
      },
    );
  }
}
