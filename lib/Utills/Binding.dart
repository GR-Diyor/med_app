import 'package:get/get.dart';
import 'package:med_app/Controller/Registration/SignInController.dart';
import 'package:med_app/Controller/Registration/SignUpController.dart';
import 'package:med_app/Controller/Registration/SignUpSetUpPhoneController.dart';
import 'package:med_app/Controller/Registration/SignUpVerifyCodePhoneController.dart';
import 'package:med_app/Controller/Registration/VerifyCodeEmailController.dart';
import 'package:med_app/Controller/Splash/SplashLaunchController.dart';
import 'package:med_app/Controller/Splash/SplashOnBoardingController.dart';
import 'package:med_app/UI/Splash/Splash_Get_Started.dart';


class AllControllerInit{
  static Future<void> init() async {
    Get.lazyPut<SplashLaunchController>(() => SplashLaunchController(),fenix: true);
    Get.lazyPut<SplashOnBoardingController>(() => SplashOnBoardingController(),fenix: true);
    Get.lazyPut<SignInController>(() => SignInController(),fenix: true);
    Get.lazyPut<SignUpController>(() => SignUpController(),fenix: true);
    Get.lazyPut<VerifyCodeEmailController>(() => VerifyCodeEmailController(),fenix: true);
    Get.lazyPut<SignUpSetUpPhoneController>(() => SignUpSetUpPhoneController(),fenix: true);
    Get.lazyPut<SignUpVerifyCodePhoneController>(() => SignUpVerifyCodePhoneController(),fenix: true);
  }

}