import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_app/Configs/AppColor.dart';
import 'package:med_app/Configs/AppSetting.dart';
import 'package:med_app/Configs/AppSize.dart';
import 'package:med_app/Configs/CustomWidget.dart';
import 'package:med_app/Controller/Forgot_password/ForgotMainController.dart';

import 'forgot_email.dart';

class ForgotMain extends StatelessWidget {
  const ForgotMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.appBar(),
      body: GetBuilder<ForgotMainController>(
        init: ForgotMainController(),
        builder: (ctx) => Container(
          width: AppSize.width(context),
          height: AppSize.height(context),
          color: AppColor.primary,
          child: Padding(
            padding: AppSize.paddingScreen,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  'Forgot Password',
                  style: AppSetting.style(
                      context: context,
                      color: AppColor.dark,
                      size: AppSetting.theme(context).bodyLarge!.fontSize!,
                      weight: FontWeight.w600),
                ),
                AppSize.SpaceHeight(5),
                const Text(
                  'Select verification method and we will send verification code',
                ),
                AppSize.SpaceHeight(20),
                Container(
                  width: AppSize.width(context),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffedf0f7)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: MaterialButton(
                    onPressed: ()=>Get.to(()=>const ForgotEmail()),
                    height: 60,
                    padding: const EdgeInsets.only(top: 20, bottom: 20,left: 15,right: 5),
                    clipBehavior: Clip.hardEdge,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.email_outlined),
                        const Spacer(),
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Email',
                              ),
                              Text(
                                // mailcom31E (I159:1079;152:975)
                                '********@mail.com',
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Spacer(),
                        const Spacer(),

                      ],
                    ),
                  ),
                ),
                AppSize.SpaceHeight(20),
                Container(
                  // resetmhv (159:1080)
                  width: AppSize.width(context),
                  decoration: BoxDecoration(
                    color: AppColor.primary,
                    border: Border.all(color: const Color(0xffedf0f7)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: MaterialButton(
                    onPressed: (){},
                    height: 60,
                    padding: const EdgeInsets.only(top: 20, bottom: 20,left: 15,right: 5),
                    clipBehavior: Clip.hardEdge,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.phone),
                        const Spacer(),
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Phone Number',
                              ),
                              Text(
                                // fRv (I159:1080;152:982)
                                '**** **** **** 2345',
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Spacer(),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
