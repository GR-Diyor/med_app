import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_app/UI/Splash/Splash_Get_Started.dart';
import 'package:med_app/UI/Splash/Splash_launch.dart';
import 'package:med_app/Utills/Binding.dart';

import 'Main/Main.dart';
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
      title: "Med App",
      themeMode: ThemeMode.light,
      smartManagement: SmartManagement.full,
      home: Main(),
    );
  }
}
