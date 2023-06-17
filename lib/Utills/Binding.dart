import 'package:get/get.dart';
import 'package:med_app/Controller/Forgot_password/ForgotEmailController.dart';
import 'package:med_app/Controller/Forgot_password/ForgotMainController.dart';
import 'package:med_app/Controller/Main/MainController.dart';
import 'package:med_app/Controller/Registration/SignInController.dart';
import 'package:med_app/Controller/Registration/SignUpController.dart';
import 'package:med_app/Controller/Registration/SignUpSetUpPhoneController.dart';
import 'package:med_app/Controller/Registration/SignUpVerifyCodePhoneController.dart';
import 'package:med_app/Controller/Registration/VerifyCodeEmailController.dart';
import 'package:med_app/Controller/Schedule/ScheduleMainController.dart';
import 'package:med_app/Controller/Schedule/SchedulePastController.dart';
import 'package:med_app/Controller/Schedule/ScheduleUpcomingController.dart';
import 'package:med_app/Controller/Splash/SplashLaunchController.dart';
import 'package:med_app/Controller/Splash/SplashOnBoardingController.dart';
import '../Controller/Home/Home1Controller.dart';
import '../Controller/Home/Home2Controller.dart';
import '../Controller/Home/Home3Controller.dart';


class AllControllerInit extends Bindings{
  static Future<void> init() async {
    Get.lazyPut<SplashLaunchController>(() => SplashLaunchController(),fenix: true);
    Get.lazyPut<SplashOnBoardingController>(() => SplashOnBoardingController(),fenix: true);
    Get.lazyPut<SignInController>(() => SignInController(),fenix: true);
    Get.lazyPut<SignUpController>(() => SignUpController(),fenix: true);
    Get.lazyPut<VerifyCodeEmailController>(() => VerifyCodeEmailController(),fenix: true);
    Get.lazyPut<SignUpSetUpPhoneController>(() => SignUpSetUpPhoneController(),fenix: true);
    Get.lazyPut<SignUpVerifyCodePhoneController>(() => SignUpVerifyCodePhoneController(),fenix: true);
    Get.lazyPut<MainController>(() => MainController(),fenix: true);
    Get.lazyPut<Home1Controller>(() => Home1Controller(),fenix: true);
    Get.lazyPut<Home2Controller>(() => Home2Controller(),fenix: true);
    Get.lazyPut<Home3Controller>(() => Home3Controller(),fenix: true);
    Get.lazyPut<ScheduleMainController>(() => ScheduleMainController(),fenix: true);
    Get.lazyPut<ScheduleUpcomingController>(() => ScheduleUpcomingController(),fenix: true);
    Get.lazyPut<SchedulePastController>(() => SchedulePastController(),fenix: true);
    Get.lazyPut<ForgotMainController>(() => ForgotMainController(),fenix: true);
    Get.lazyPut<ForgotEmailController>(() => ForgotEmailController(),fenix: true);
  }

  @override
  void dependencies() {
   init();
  }

}



// enum AniProps { opacity, translateY }
//
// class FadeAnimation extends StatelessWidget {
//   final double delay;
//   final Widget child;
//
//   const FadeAnimation(this.delay, this.child);
//
//   @override
//   Widget build(BuildContext context) {
//     final tween = MultiTween<AniProps>()
//       ..add(AniProps.opacity, Tween(begin: 0.0, end: 1.0))
//       ..add(AniProps.translateY, Tween(begin: -30.0, end: 0.0), const Duration(milliseconds: 500), Curves.easeOut);
//
//     return PlayAnimation<MultiTweenValues<AniProps>>(
//       delay: Duration(milliseconds: (500 * delay).round()),
//       duration: tween.duration,
//       tween: tween,
//       child: child,
//       builder: (context, child, animation) => Opacity(
//         opacity: animation.get(AniProps.opacity),
//         child: Transform.translate(
//             offset: Offset(0, animation.get(AniProps.translateY)),
//             child: child
//         ),
//       ),
//     );
//   }
// }