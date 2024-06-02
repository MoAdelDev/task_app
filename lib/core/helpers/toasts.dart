import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task_app/core/style/color_manager.dart';

showToast(String message, {bool isError = false}) {
  if (message == '') return;
  Fluttertoast.showToast(
      msg: message,
      backgroundColor:
          isError ? ColorLightManager.error : ColorLightManager.primary,
      gravity: ToastGravity.TOP,
      fontSize: 14.sp,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_LONG);
}
