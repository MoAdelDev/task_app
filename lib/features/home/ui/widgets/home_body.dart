import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/helpers/spacing.dart';
import 'package:task_app/features/home/ui/widgets/home_filters.dart';
import 'package:task_app/features/home/ui/widgets/home_welcome_text.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 10.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeWelcomeText(),
          verticalSpace(20),
          const HomeFilters(),
        ],
      ),
    );
  }
}
