import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/db/hive_manager.dart';
import 'package:task_app/core/di/dependency_injection.dart';
import 'package:task_app/firebase_options.dart';
import 'package:task_app/task_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupGetIt();
  await HiveManager.init();
  await ScreenUtil.ensureScreenSize();
  runApp(const TaskApp());
}
