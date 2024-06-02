import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/helpers/extensions.dart';
import 'package:task_app/core/style/color_manager.dart';
import 'package:task_app/core/widgets/custom_text.dart';

class HomeFilterTile extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final bool isSelected;
  const HomeFilterTile({
    super.key,
    required this.onTap,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 800),
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isSelected
              ? context.colorScheme.primary
              : ColorLightManager.primaryExtraLight,
        ),
        child: Center(
          child: CustomText(
            text: label,
            style: context.textTheme.bodyMedium,
            color: isSelected
                ? context.colorScheme.onPrimary
                : context.colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
