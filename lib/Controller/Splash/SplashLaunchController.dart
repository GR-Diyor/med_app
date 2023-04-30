import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:med_app/UI/Pages/Splash/Splash_OnBoarding.dart';

class SplashLaunchController extends GetxController {
  //navigate function
  void SplashFunc(BuildContext context) {
    //  Future.delayed(const Duration(milliseconds: 2000), () {
    //
    //   // Navigator.pushReplacement(context, PageRouteBuilder(
    //   //
    //   //     transitionDuration: const Duration(milliseconds: 2000),
    //   //     transitionsBuilder: (BuildContext context, Animation<double>_anim,
    //   //         Animation<double>_anim2,Widget child){
    //   //       _anim= CurvedAnimation(parent: _anim, curve: Curves.decelerate);
    //   //       return ScaleTransition(scale: _anim,
    //   //         child: child,);
    //   //     },
    //   //
    //   //     pageBuilder: (BuildContext context, Animation<double>_anim,
    //   //         Animation<double>_anim2) {
    //   //       return const SplashOnBoarding();
    //   //     },
    //   // ));
    //
    //
    // });
    Future.delayed(const Duration(seconds: 2),(){
      Get.off(transition: Transition.circularReveal,duration: const Duration(seconds: 6),()=>const SplashOnBoarding(),);
    });

  }
}