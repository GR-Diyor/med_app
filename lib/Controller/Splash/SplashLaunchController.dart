import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:med_app/UI/Pages/Splash/Splash_OnBoarding.dart';

class SplashLaunchController extends GetxController{


  void SplashFunc(){
    Future.delayed(const Duration(milliseconds: 200),()=>Get.toEnd(() =>const SplashOnBoarding()));
  }
}