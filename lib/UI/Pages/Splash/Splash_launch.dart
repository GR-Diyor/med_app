import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_app/Resource/CustomWidget.dart';

class Splash_launch extends StatelessWidget {
  const Splash_launch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
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
