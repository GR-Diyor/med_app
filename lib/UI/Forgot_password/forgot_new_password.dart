import 'package:flutter/material.dart';

import '../../Configs/AppColor.dart';
import '../../Configs/AppSetting.dart';
import '../../Configs/AppSize.dart';
import '../../Configs/CustomWidget.dart';

class ForgotNewPassword extends StatefulWidget {
  const ForgotNewPassword({Key? key}) : super(key: key);

  @override
  State<ForgotNewPassword> createState() => _ForgotNewPasswordState();
}

class _ForgotNewPasswordState extends State<ForgotNewPassword> {
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
                    'New Password',
                    style: AppSetting.style(
                        context: context,
                        color: AppColor.dark,
                        size: AppSetting.theme(context).bodyLarge!.fontSize!,
                        weight: FontWeight.w600),
                  ),
                  AppSize.SpaceHeight(5),
                  const Text(
                    'Create a new password that is safe and easy to remember',
                  ),
                  AppSize.SpaceHeight(20),
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.flag,color: Colors.grey,),
                        labelText: "New Password"
                    ),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  AppSize.SpaceHeight(10),
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.flag,color: Colors.grey,),
                        labelText: "Confirm New Password"
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
                  onPressed: (){},//=>Get.to(()=>const ForgotOtpPhone()),
                  child: Text("Confirm New Password",style: TextStyle(color: Colors.white,fontSize: Theme.of(context).textTheme.titleMedium!.fontSize),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
