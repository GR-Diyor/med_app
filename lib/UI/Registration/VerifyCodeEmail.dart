import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_app/Controller/Registration/VerifyCodeEmailController.dart';
import 'package:med_app/UI/Registration/SignUpSetUpPhone.dart';
import '../../Resource/AppColor.dart';
import '../../Resource/AppSize.dart';


class VerifyCodeEmail extends StatefulWidget {
  const VerifyCodeEmail({Key? key}) : super(key: key);

  @override
  State<VerifyCodeEmail> createState() => _VerifyCodeEmailState();
}

class _VerifyCodeEmailState extends State<VerifyCodeEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: GetBuilder<VerifyCodeEmailController>(
        init: VerifyCodeEmailController(),
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
                    "Please enter the code we just sent to email\n"
                        "@emailName",
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
                      Get.find<VerifyCodeEmailController>().WidgetCodeField(context,1,true,),
                      Get.find<VerifyCodeEmailController>().WidgetCodeField(context,2,Get.find<VerifyCodeEmailController>().iSActive),
                      Get.find<VerifyCodeEmailController>().WidgetCodeField(context,3,Get.find<VerifyCodeEmailController>().iSActive),
                      Get.find<VerifyCodeEmailController>().WidgetCodeField(context,4,Get.find<VerifyCodeEmailController>().iSActive),
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
                       Get.to(()=>const SignUpSetUpPhone());
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
