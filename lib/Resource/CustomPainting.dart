import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:med_app/Resource/AppColor.dart';

class CustomPainting{
  static SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
    statusBarColor: AppColor.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    systemStatusBarContrastEnforced: true,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: AppColor.transparent,
    systemNavigationBarDividerColor: AppColor.transparent,
    systemNavigationBarContrastEnforced: true,
  );
}