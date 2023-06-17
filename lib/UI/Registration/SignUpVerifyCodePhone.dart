import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:med_app/Controller/Registration/SignUpVerifyCodePhoneController.dart';
import 'package:med_app/UI/Registration/SignUpSuccessFully.dart';
import '../../Configs/AppColor.dart';
import '../../Configs/AppSize.dart';

class SignUpVerifyCodePhone extends StatefulWidget {
  const SignUpVerifyCodePhone({Key? key}) : super(key: key);

  @override
  State<SignUpVerifyCodePhone> createState() => _SignUpVerifyCodePhoneState();
}

class _SignUpVerifyCodePhoneState extends State<SignUpVerifyCodePhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: GetBuilder<SignUpVerifyCodePhoneController>(
          init: SignUpVerifyCodePhoneController(),
          builder: (_) {
            return Form(
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                margin: EdgeInsets.only(top: AppSize.height(context) / 6),
                height: AppSize.height(context),
                width: AppSize.width(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Verify Code",
                      style: TextStyle(
                          fontSize:
                          Theme.of(context).textTheme.titleLarge!.fontSize,
                          color: AppColor.dark,
                          fontWeight: FontWeight.w700),
                    ),
                    AppSize.SpaceHeight(5),
                    Text(
                      "Please enter the code we just sent to phone\n"
                          "+xxx Phone Number",
                      style: TextStyle(
                          color: AppColor.grey,
                          fontSize:
                          Theme.of(context).textTheme.bodySmall!.fontSize),
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Get.find<SignUpVerifyCodePhoneController>().WidgetCodeField(context,1,true,),
                        Get.find<SignUpVerifyCodePhoneController>().WidgetCodeField(context,2,Get.find<SignUpVerifyCodePhoneController>().iSActive),
                        Get.find<SignUpVerifyCodePhoneController>().WidgetCodeField(context,3,Get.find<SignUpVerifyCodePhoneController>().iSActive),
                        Get.find<SignUpVerifyCodePhoneController>().WidgetCodeField(context,4,Get.find<SignUpVerifyCodePhoneController>().iSActive),
                      ],
                    ),
                    const SizedBox(height: 25,),
                    const Align(
                      alignment: Alignment.center,
                      child: Text.rich(
                        TextSpan(
                            text: "Resend code in",
                            children: [
                              TextSpan(
                                  text: "00:48"
                              ),
                            ]
                        ),
                      ),
                    ),
                    const SizedBox(height: 50,),
                    MaterialButton(
                      height: 50,
                      minWidth: AppSize.Maxwidth,
                      color: AppColor.blue,
                      elevation: 0,
                      clipBehavior: Clip.none,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      onPressed: () {
                        Get.to(()=>const SignUpSuccessFully());
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .fontSize),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
