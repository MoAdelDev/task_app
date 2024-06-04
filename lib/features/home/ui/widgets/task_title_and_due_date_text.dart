import 'package:flutter/widgets.dart';
import 'package:task_app/core/helpers/extensions.dart';
import 'package:task_app/core/helpers/spacing.dart';
import 'package:task_app/core/style/font_weight_helper.dart';
import 'package:task_app/core/widgets/custom_text.dart';
import 'package:task_app/features/home/data/models/task_model.dart';

class TaskTitleAndDueDateText extends StatelessWidget {
  final TaskModel task;
  const TaskTitleAndDueDateText({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
