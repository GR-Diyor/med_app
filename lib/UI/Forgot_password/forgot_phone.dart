import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:med_app/Configs/AppColor.dart';
import 'package:med_app/Configs/AppSetting.dart';
import 'package:med_app/Configs/AppSize.dart';
import 'package:med_app/Configs/CustomWidget.dart';
import 'package:med_app/UI/Forgot_password/forgot_otp_phone.dart';


class ForgotPhone extends StatelessWidget {
  const ForgotPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.appBar(),
      backgroundColor: AppColor.primary,
      resizeToAvoidBottomInset: false,
      body: AppSize.FullScreen(
        context: context,
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reset Password',
                    style: AppSetting.style(
                        context: context,
                        color: AppColor.dark,
                        size: AppSetting.theme(context).bodyLarge!.fontSize!,
                        weight: FontWeight.w600),
                  ),
                  AppSize.SpaceHeight(5),
                  const Text(
                    'Enter your phone number, we will send a verification code to email',
                  ),
                  AppSize.SpaceHeight(20),
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.flag,color: Colors.grey,),
                        labelText: "Type your phone number"
                    ),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 50,
                child: MaterialButton(
                  height: 50,
                  minWidth: AppSize.width(context),
                  color: AppColor.blue,
                  elevation: 0,
                  clipBehavior: Clip.none,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  onPressed: ()=>Get.to(()=>const ForgotOtpPhone()),
                  child: Text("Send link",style: TextStyle(color: Colors.white,fontSize: Theme.of(context).textTheme.titleMedium!.fontSize),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
