import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_app/UI/Pages/Splash/Splash_launch.dart';
import 'package:med_app/Utills/Binding.dart';

import 'Resource/AppSetting.dart';

Future<void> main() async {
  await AppSetting.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MedApp",
      initialBinding: AllControllerBinding(),
      themeMode: ThemeMode.light,
      smartManagement: SmartManagement.full,
      checkerboardOffscreenLayers: true,
      checkerboardRasterCacheImages: true,
      home: const Splash_launch(),
    );
  }
}
