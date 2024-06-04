import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/helpers/platforms.dart';
import 'package:task_app/core/helpers/spacing.dart';
import 'package:task_app/core/widgets/custom_tap.dart';
import 'package:task_app/features/home/logic/cubit/home_cubit.dart';
import 'package:task_app/features/home/ui/widgets/create_task_button_with_form.dart';
import 'package:task_app/features/home/ui/widgets/home_filters.dart';
import 'package:task_app/features/home/ui/widgets/home_tasks_list.dart';
import 'package:task_app/features/home/ui/widgets/home_welcome_text.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.w,
        right: 10.w,
        top: 10.h,
      ),
      child: Column(
        children: [
          Expanded(
            child: CustomTap(
              onTap: isDesktop
                  ? null
                  : () {
                      // Hide create task form
                      if (!context.read<HomeCubit>().isCreateTaskFormHidden) {
                        context
                            .read<HomeCubit>()
                            .emitChangeCreateTaskState(true);
                      }
                    },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const HomeWelcomeText(),
                              verticalSpace(20),
                              const HomeFilters(),
                            ],
                          ),
                        ),
                        if (isDesktop) ...[
                          horizontalSpace(10),
                          const CreateTaskButtonWithForm(),
                        ],
                      ],
                    ),
                    verticalSpace(10),
                    const Expanded(
                      child: HomeTasksList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (isMobile) ...[
            verticalSpace(10),
            const CreateTaskButtonWithForm(),
          ],
        ],
      ),
    );
  }
}
