import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/helpers/spacing.dart';
import 'package:task_app/features/home/logic/cubit/home_cubit.dart';
import 'package:task_app/features/home/ui/widgets/home_filter_tile.dart';

class HomeFilters extends StatelessWidget {
  const HomeFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        HomeCubit cubit = context.read();
        return SizedBox(
          height: 25.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => HomeFilterTile(
              onTap: () {
                cubit.emitSelectFilterState(index);
              },
              isSelected: cubit.selectedFilterIndex == index,
              label: cubit.filters[index].label,
            ),
            separatorBuilder: (context, index) => horizontalSpace(5),
            itemCount: cubit.filters.length,
          ),
        );
      },
    );
  }
}
