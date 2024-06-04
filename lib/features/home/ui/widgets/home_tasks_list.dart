import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/core/helpers/extensions.dart';
import 'package:task_app/core/helpers/platforms.dart';
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
        if (isMobile) {
          return _buildMobileTasksList(cubit);
        }
        return _buildDesktopTasksList(cubit, context);
      },
    );
  }

  Widget _buildMobileTasksList(HomeCubit cubit) {
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
  }

  Widget _buildDesktopTasksList(HomeCubit cubit, BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: GridView.count(
        crossAxisCount: _calculateCrossAxisCount(context),
        childAspectRatio: 4,
        children: List.generate(
          cubit.allTasks.length,
          (index) {
            int itemIndex = cubit.allTasks.length - index - 1;
            return HomeTaskTile(
              task: cubit.allTasks[itemIndex],
              index: itemIndex,
            );
          },
        ),
      ),
    );
  }

  int _calculateCrossAxisCount(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount;
    if (screenWidth < 900) {
      // Small screen breakpoint
      crossAxisCount = 1;
    } else if (screenWidth < 1300) {
      // Medium screen breakpoint
      crossAxisCount = 2;
    } else {
      // Large screen breakpoint
      crossAxisCount = 3;
    }
    return crossAxisCount;
  }
}
