import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:med_app/Controller/Splash/SplashOnBoardingController.dart';
import 'package:med_app/Resource/AppColor.dart';
import 'package:med_app/Resource/AppSetting.dart';
import 'package:med_app/Resource/AppSize.dart';

class SplashOnBoarding extends StatefulWidget {
  const SplashOnBoarding({Key? key}) : super(key: key);

  @override
  State<SplashOnBoarding> createState() => _SplashOnBoardingState();
}

class _SplashOnBoardingState extends State<SplashOnBoarding> {
  @override
  void initState() {
   Get.find<SplashOnBoardingController>().ManualScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashOnBoardingController>(
            init:SplashOnBoardingController(),
            builder:(_){
        return WillPopScope(
          onWillPop: ()async=>false,
          child: Scaffold(
            backgroundColor: AppColor.primary,
            resizeToAvoidBottomInset: false,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: AppColor.transparent,
               title: SvgPicture.asset(
                "assets/LogoSmall.svg",
                fit: BoxFit.cover,
                clipBehavior: Clip.none,
              ),
              elevation: 0,
              bottomOpacity: 0,
            ),
            body: Stack(
              alignment: Alignment.center,
              fit: StackFit.expand,
              children: [
                //background gradient
                Positioned(
                  top: 0.0,
                  // bottom: AppSize.height/2,
                  child: SvgPicture.asset("assets/splash/OnBoardingGradient.svg",
                      fit: BoxFit.cover, clipBehavior: Clip.hardEdge),
                ),
                //phone image
                Positioned(
                 top: AppSize.height(context)/2-(AppSize.height(context)/3.3),
                  child: Padding(
                    padding:const EdgeInsets.only(left: 10,right: 10),
                    child: Image.asset("assets/splash/Images.png",
                        fit: BoxFit.cover, alignment: Alignment.center,height: AppSize.height(context)/2,),
                  ),
                ),
                //
                SizedBox(
                  height: AppSize.height(context),
                  width: AppSize.width(context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: AppSize.height(context) / 2.9,
                        width: AppSize.width(context),
                        decoration: BoxDecoration(
                          color: AppColor.bottonPrimary,
                        ),
                        child: Stack(
                          children: [
                            //background
                            Align(
                              alignment: Alignment.topRight,
                              child: SvgPicture.asset(
                                "assets/splash/OnBoardingEllipse.svg",
                                fit: BoxFit.contain,
                              ),
                            ),
                            //foreground
                            SingleChildScrollView(
                              primary: true,
                              physics: const BouncingScrollPhysics(),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                          text: "Easy Way to Get\n",
                                          style: TextStyle(
                                              color: AppColor.primary,
                                              fontSize: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge!
                                                  .fontSize,
                                              fontWeight: FontWeight.bold),
                                          children: [
                                            TextSpan(
                                              text: "Better Life",
                                              style: TextStyle(
                                                  color: AppColor.primary,
                                                  fontSize: Theme.of(context)
                                                      .textTheme
                                                      .titleLarge!
                                                      .fontSize,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ]),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Text.rich(
                                      TextSpan(
                                          text:
                                              "Amet minim mollit non deserunt \nullamco est sit aliqua dolor do amet \nsint. Velit officia consequat.",
                                          style: TextStyle(
                                              color: AppColor.primary.withOpacity(.8),
                                              fontSize: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium!
                                                  .fontSize)),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        SizedBox(
                                          height: 8,
                                          width: 60,
                                          child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children:
                                                Get.find<SplashOnBoardingController>()
                                                    .buildIndicator(),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () =>
                                              Get.find<SplashOnBoardingController>()
                                                  .NEXTValue(),
                                          child: Focus(
                                            child: Container(
                                              height: 56,
                                              width: 56,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  color: AppColor.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(27)),
                                              child: Icon(
                                                Icons.arrow_forward_outlined,
                                                color: AppColor.bottonPrimary,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
