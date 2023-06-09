import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:med_app/Configs/AppColor.dart';

class CustomPainting{
  static SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
    statusBarColor: AppColor.transparent,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
    systemStatusBarContrastEnforced: false,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: AppColor.transparent,
    systemNavigationBarDividerColor: AppColor.transparent,
    systemNavigationBarContrastEnforced: false,
  );
}