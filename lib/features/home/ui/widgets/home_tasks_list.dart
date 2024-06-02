import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/core/helpers/extensions.dart';
import 'package:task_app/core/helpers/spacing.dart';
import 'package:task_app/core/widgets/custom_text.dart';
import 'package:task_app/features/home/logic/cubit/home_cubit.dart';
import 'package:task_app/features/home/ui/widgets/home_task_tile.dart';

class HomeTasksList extends StatelessWidget {
  const HomeTasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        HomeCubit cubit = context.read();
        if (cubit.allTasks.isEmpty) {
          return Center(
            child: CustomText(
              text: 'No tasks added yet',
              style: context.textTheme.bodyLarge,
            ),
          );
        }
        return ListView.separated(
          itemBuilder: (context, index) {
            int itemIndex = cubit.allTasks.length - index - 1;
            return HomeTaskTile(
              task: cubit.allTasks[itemIndex],
              index: itemIndex,
            );
          },
          separatorBuilder: (context, index) => verticalSpace(10),
          itemCount: cubit.allTasks.length,
        );
      },
    );
  }
}
