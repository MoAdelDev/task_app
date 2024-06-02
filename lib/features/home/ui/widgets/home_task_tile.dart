import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/helpers/extensions.dart';
import 'package:task_app/core/helpers/spacing.dart';
import 'package:task_app/core/style/color_manager.dart';
import 'package:task_app/core/style/font_weight_helper.dart';
import 'package:task_app/core/widgets/custom_text.dart';
import 'package:task_app/features/home/data/models/task_model.dart';

class HomeTaskTile extends StatelessWidget {
  final TaskModel task;
  const HomeTaskTile({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: context.colorScheme.shadow,
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: task.title,
                    style: context.textTheme.bodyLarge,
                    fontWeight: FontWeightHelper.bold,
                  ),
                  verticalSpace(5),
                  CustomText(
                    text: task.dueDate,
                    style: context.textTheme.bodySmall,
                    fontWeight: FontWeightHelper.regular,
                  ),
                ],
              ),
            ),
            horizontalSpace(5),
            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: 13,
                  backgroundColor: task.isDone
                      ? ColorLightManager.primaryLight
                      : ColorLightManager.primaryExtraLight,
                ),
                Positioned(
                  top: -6.h,
                  bottom: 0,
                  right: -5.w,
                  child: Icon(
                    Icons.check,
                    color: task.isDone
                        ? ColorLightManager.primary
                        : ColorLightManager.primaryLight,
                    size: 27,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
