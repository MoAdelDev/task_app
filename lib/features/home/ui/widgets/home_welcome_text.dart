import 'package:flutter/material.dart';
import 'package:task_app/core/helpers/extensions.dart';
import 'package:task_app/core/style/font_weight_helper.dart';
import 'package:task_app/core/widgets/custom_text.dart';

class HomeWelcomeText extends StatelessWidget {
  const HomeWelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: 'Good Morning',
      style: context.textTheme.titleLarge,
      fontWeight: FontWeightHelper.medium,
    );
  }
}
