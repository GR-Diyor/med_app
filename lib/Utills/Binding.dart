import 'package:get/get.dart';
import 'package:med_app/Controller/Splash/SplashLaunchController.dart';
import 'package:med_app/Controller/Splash/SplashOnBoardingController.dart';


class AllControllerBinding extends Bindings{
  @override
   void dependencies() {
    Get.lazyPut<SplashLaunchController>(() => SplashLaunchController(),fenix: true);
    Get.lazyPut<SplashOnBoardingController>(() => SplashOnBoardingController(),fenix: true);
  }

}