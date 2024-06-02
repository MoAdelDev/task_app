import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/helpers/extensions.dart';
import 'package:task_app/core/widgets/custom_text.dart';

class HomeFilterTile extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  const HomeFilterTile({super.key, required this.onTap, required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 800),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: context.colorScheme.primary,
        ),
        child: Center(
          child: CustomText(
            text: label,
            style: context.textTheme.bodyMedium,
            color: context.colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
