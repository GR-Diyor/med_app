import 'package:flutter/material.dart';
import 'package:med_app/Configs/AppColor.dart';
import 'package:med_app/Configs/AppSetting.dart';
import 'package:med_app/Configs/AppSize.dart';
import 'package:med_app/Configs/CustomWidget.dart';


class ForgotEmail extends StatelessWidget {
  const ForgotEmail({Key? key}) : super(key: key);

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
                    'Enter your email, we will send a verification code to email',
                  ),
                  AppSize.SpaceHeight(20),
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined,color: Colors.grey,),
                        labelText: "Type your email"
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
                  onPressed: (){},
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
