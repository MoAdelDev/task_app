import 'package:flutter/material.dart';

class CustomTap extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;
  const CustomTap({
    super.key,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10.0),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      child: child,
    );
  }
}
