import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/helpers/extensions.dart';
import 'package:task_app/core/helpers/spacing.dart';
import 'package:task_app/core/widgets/custom_button.dart';

class TaskOptionsBottomSheet extends StatelessWidget {
  const TaskOptionsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            onPressed: () {},
            label: 'Mark As Done',
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
    );
  }
}
