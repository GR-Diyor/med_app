import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:med_app/Controller/Splash/SplashLaunchController.dart';
import 'package:med_app/Resource/AppSetting.dart';
import 'package:med_app/Resource/CustomWidget.dart';

class Splash_launch extends StatefulWidget {
  const Splash_launch({Key? key}) : super(key: key);

  @override
  State<Splash_launch> createState() => _Splash_launchState();
}

class _Splash_launchState extends State<Splash_launch> {
  @override
  void initState() {
    AppSetting.fullScreen();
    super.initState();
   Get.find<SplashLaunchController>().SplashFunc(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomWidget.FullScreen(
              context,
              SvgPicture.asset(
                "assets/splash/SplashGradient.svg",
                fit: BoxFit.fill,
              )),
          Center(
            child: SvgPicture.asset("assets/Logo.svg"),
          ),
        ],

      ),
    );
  }
}

