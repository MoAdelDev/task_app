import 'package:flutter/material.dart';
import 'package:task_app/core/helpers/spacing.dart';
import 'package:task_app/features/home/ui/widgets/home_task_tile.dart';

class HomeTasksList extends StatelessWidget {
  const HomeTasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return const HomeTaskTile();
      },
      separatorBuilder: (context, index) => verticalSpace(10),
      itemCount: 10,
    );
  }
}
