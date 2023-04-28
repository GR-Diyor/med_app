import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:med_app/Resource/CustomPainting.dart';
import 'package:med_app/UI/Pages/Splash/Splash_launch.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(CustomPainting.systemUiOverlayStyle);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: [
    SystemUiOverlay.top,
    SystemUiOverlay.bottom,
  ]);
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
