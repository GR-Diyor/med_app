import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Resource/AppColor.dart';
import '../../../Resource/AppSize.dart';

class SplashGetStarted extends StatelessWidget {
  const SplashGetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary.withOpacity(0.99),
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.transparent,
       leadingWidth: 0,
        leading: const SizedBox.shrink(),
        title: SvgPicture.asset(
          "assets/LogoSmall.svg",
          fit: BoxFit.cover,
          clipBehavior: Clip.none,
        ),
        elevation: 0,
        bottomOpacity: 0,
      ),
      body: Stack(
        children: [
          //background gradient
          Positioned(
            top: 0.0,
            child: SvgPicture.asset("assets/splash/SplashGetStartedGradient.svg",
                fit: BoxFit.cover, clipBehavior: Clip.hardEdge),
          ),
          SizedBox(
            height: AppSize.height(context),
            width: AppSize.width(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/splash/SplashGetStartedMan2.png",
                    fit: BoxFit.cover,alignment: Alignment.center,),
                Container(
                  height: AppSize.height(context) / 2.9,
                  width: AppSize.width(context),
                  decoration: BoxDecoration(
                    color: AppColor.primary,
                  ),
                  child: SingleChildScrollView(
                    primary: true,
                    physics: const BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Improve the Quality \nof Service for Patient\n Happiness",
                          style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 25, ),
                          ),
                          const SizedBox(height: 30,),
                          MaterialButton(
                              height: 50,
                              minWidth: AppSize.Maxwidth,
                              color: AppColor.bottonPrimary,
                              elevation: 0,
                              clipBehavior: Clip.none,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                              onPressed: (){},
                            child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: Theme.of(context).textTheme.titleMedium!.fontSize),),
                          ),
                          const SizedBox(height: 15,),
                          Text.rich(
                            TextSpan(
                              text: "Have an account? ",
                              style: TextStyle(color: AppColor.textGrey,fontSize: Theme.of(context).textTheme.titleSmall!.fontSize),
                            children: [
                                TextSpan(
                                text: "Login",
                                style: TextStyle(color: AppColor.bottonPrimary,fontSize: Theme.of(context).textTheme.titleSmall!.fontSize),)
                                ]
                            ),

                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
