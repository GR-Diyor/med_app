import 'package:flutter/material.dart';
import 'package:med_app/UI/Pages/Splash/Splash_launch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MedApp",
      home: Splash_launch(),
    );
  }
}
