import 'package:flutter/material.dart';
import 'package:task_app/features/home/ui/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        bottom: false,
        child: HomeBody(),
      ),
    );
  }
}
