import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_app/UI/Splash/Splash_Get_Started.dart';

import '../../Configs/AppSetting.dart';

class SplashOnBoardingController extends GetxController{

  int currentIndex=0;


  void ManualScreen(){
    AppSetting.manualScreen();
    update();
  }

  void NEXTValue(){
    if(currentIndex==2) {
      Get.to(()=>const SplashGetStarted(),duration: const Duration(milliseconds: 500),transition: Transition.rightToLeftWithFade);
    } else {
      currentIndex++;
    }
    update();
  }
  Widget indicator(bool isActive) {

    var anim= AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 24 : 8,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)
      ),
    );
    update();
    return anim;

  }

  List<Widget> buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i<3; i++) {
      if (currentIndex == i) {
        indicators.add(indicator(true));
      } else {
        indicators.add(indicator(false));
      }
    }
    update();
    return indicators;
  }
}