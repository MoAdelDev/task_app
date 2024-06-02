import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/style/color_manager.dart';

class TaskDoneIcon extends StatelessWidget {
  final bool isDone;
  const TaskDoneIcon({super.key, required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          radius: 13,
          backgroundColor: isDone
              ? ColorLightManager.primaryLight
              : ColorLightManager.primaryExtraLight,
        ),
        Positioned(
          top: -6.h,
          bottom: 0,
          right: -5.w,
          child: Icon(
            Icons.check,
            color: isDone
                ? ColorLightManager.primary
                : ColorLightManager.primaryLight,
            size: 27,
          ),
        ),
      ],
    );
  }
}
