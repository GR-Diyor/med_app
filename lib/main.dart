import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_app/UI/Pages/Splash/Splash_launch.dart';
import 'package:med_app/Utills/Binding.dart';

import 'Resource/AppSetting.dart';

Future<void> main() async {
  await AppSetting.init();
  await AllControllerInit.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MedApp",
      themeMode: ThemeMode.light,
      smartManagement: SmartManagement.full,
      home: Splash_launch(),
    );
  }
}
