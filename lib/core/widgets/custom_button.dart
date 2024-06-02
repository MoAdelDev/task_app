import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/helpers/extensions.dart';
import 'package:task_app/core/widgets/custom_loading_indicator.dart';
import 'package:task_app/core/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String? label;
  final bool isLoading;
  final double? height;
  final bool isExpand;
  final Widget? child;
  final double? width;
  const CustomButton({
    super.key,
    required this.onPressed,
    this.label,
    this.isLoading = false,
    this.height,
    this.isExpand = true,
    this.child,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const CustomLoadingIndicator();
    }
    return Container(
      width: isExpand ? double.infinity : width,
      height: height ?? 40.h,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: context.colorScheme.primary,
      ),
      child: MaterialButton(
        onPressed: () async {
          FocusManager.instance.primaryFocus?.unfocus();
          onPressed();
        },
        splashColor: Colors.grey.withOpacity(0.3),
        colorBrightness: Brightness.light,
        child: label == null
            ? child
            : CustomText(
                text: label ?? '',
                style: context.textTheme.titleMedium,
                color: Colors.white,
              ),
      ),
    );
  }
}
