import 'package:flutter/material.dart';
import 'package:task_app/core/widgets/custom_button.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {},
      label: 'Create Task',
    );
  }
}
