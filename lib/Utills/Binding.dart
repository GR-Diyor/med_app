import 'package:get/get.dart';
import 'package:med_app/Controller/Splash/SplashLaunchController.dart';
import 'package:med_app/Controller/Splash/SplashOnBoardingController.dart';


class AllControllerInit{
  static Future<void> init() async {
    Get.lazyPut<SplashLaunchController>(() => SplashLaunchController(),fenix: true);
    Get.lazyPut<SplashOnBoardingController>(() => SplashOnBoardingController(),fenix: true);
  }

}