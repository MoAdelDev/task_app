import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/helpers/extensions.dart';
import 'package:task_app/core/helpers/spacing.dart';
import 'package:task_app/features/home/data/models/task_model.dart';
import 'package:task_app/features/home/logic/cubit/home_cubit.dart';
import 'package:task_app/features/home/ui/widgets/task_done_icon.dart';
import 'package:task_app/features/home/ui/widgets/task_more_button.dart';
import 'package:task_app/features/home/ui/widgets/task_options_bottom_sheet.dart';
import 'package:task_app/features/home/ui/widgets/task_title_and_due_date_text.dart';

class HomeTaskTile extends StatelessWidget {
  final TaskModel task;
  final int index;
  const HomeTaskTile({super.key, required this.task, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        showModalBottomSheet(
          context: context,
          builder: (_) {
            return BlocProvider<HomeCubit>.value(
              value: context.read(),
              child: TaskOptionsBottomSheet(
                index: index,
              ),
            );
          },
        );
      },
      child: Card(
        shadowColor: context.colorScheme.shadow,
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 16.h,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: TaskTitleAndDueDateText(
                  task: task,
                ),
              ),
              horizontalSpace(5),
              TaskMoreButton(
                index: index,
              ),
              horizontalSpace(5),
              TaskDoneIcon(
                isDone: task.isDone,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
