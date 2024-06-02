import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/features/home/ui/widgets/create_task_form.dart';
import 'package:task_app/features/home/ui/widgets/create_task_submit.dart';

class CreateTaskButtonWithBottomSheet extends StatefulWidget {
  const CreateTaskButtonWithBottomSheet({super.key});

  @override
  State<CreateTaskButtonWithBottomSheet> createState() =>
      _CreateTaskButtonWithBottomSheetState();
}

class _CreateTaskButtonWithBottomSheetState
    extends State<CreateTaskButtonWithBottomSheet> {
  bool isBottomSheetHidden = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.paddingOf(context).bottom,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: isBottomSheetHidden
            ? null
            : [
                BoxShadow(
                  blurRadius: 30,
                  spreadRadius: 4,
                  color: Colors.grey[400]!,
                  blurStyle: BlurStyle.normal,
                ),
              ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
          top: 20.h,
          bottom: 10.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (!isBottomSheetHidden) const CreateTaskForm(),
            const CreateTaskSubmit(),
          ],
        ),
      ),
    );
  }
}
