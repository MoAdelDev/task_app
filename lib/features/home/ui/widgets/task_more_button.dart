import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/core/helpers/extensions.dart';
import 'package:task_app/core/widgets/custom_tap.dart';
import 'package:task_app/features/home/logic/cubit/home_cubit.dart';
import 'package:task_app/features/home/ui/widgets/task_options_bottom_sheet.dart';

class TaskMoreButton extends StatelessWidget {
  const TaskMoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTap(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (_) {
            return BlocProvider<HomeCubit>.value(
              value: context.read(),
              child: const TaskOptionsBottomSheet(),
            );
          },
        );
      },
      child: Icon(
        Icons.more_horiz,
        color: context.colorScheme.primary,
      ),
    );
  }
}
