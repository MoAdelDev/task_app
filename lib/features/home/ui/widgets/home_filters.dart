import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/helpers/spacing.dart';
import 'package:task_app/features/home/ui/widgets/home_filter_tile.dart';

class HomeFilters extends StatelessWidget {
  const HomeFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => HomeFilterTile(
          onTap: () {},
          isSelected: true,
          label: 'All',
        ),
        separatorBuilder: (context, index) => horizontalSpace(5),
        itemCount: 4,
      ),
    );
  }
}
