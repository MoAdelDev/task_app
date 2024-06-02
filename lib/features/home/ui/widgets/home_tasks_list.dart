import 'package:flutter/material.dart';
import 'package:task_app/core/helpers/spacing.dart';

class HomeTasksList extends StatelessWidget {
  const HomeTasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Container(
          height: 100,
          color: Colors.red,
        );
      },
      separatorBuilder: (context, index) => verticalSpace(10),
      itemCount: 10,
    );
  }
}
