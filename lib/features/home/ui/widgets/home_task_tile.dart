import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_app/core/helpers/extensions.dart';
import 'package:task_app/core/helpers/spacing.dart';
import 'package:task_app/core/style/color_manager.dart';
import 'package:task_app/core/style/font_weight_helper.dart';
import 'package:task_app/core/widgets/custom_text.dart';

class HomeTaskTile extends StatelessWidget {
  const HomeTaskTile({super.key});

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
                    text: 'Build Ui Android',
                    style: context.textTheme.bodyLarge,
                    fontWeight: FontWeightHelper.bold,
                  ),
                  verticalSpace(5),
                  CustomText(
                    text: 'Due Date: Mon. 21/3/2024',
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
                  backgroundColor: ColorLightManager.primaryLight,
                ),
                Positioned(
                  top: -6.h,
                  bottom: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    'assets/svgs/check.svg',
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
