import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:med_app/Controller/Registration/SignUpSetUpPhoneController.dart';
import 'package:med_app/UI/Registration/SignUpVerifyCodePhone.dart';

import '../../Configs/AppColor.dart';
import '../../Configs/AppSize.dart';

class SignUpSetUpPhone extends StatefulWidget {
  const SignUpSetUpPhone({Key? key}) : super(key: key);

  @override
  State<SignUpSetUpPhone> createState() => _SignUpSetUpPhoneState();
}

class _SignUpSetUpPhoneState extends State<SignUpSetUpPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: GetBuilder<SignUpSetUpPhoneController>(
          init: SignUpSetUpPhoneController(),
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
                      "Verification",
                      style: TextStyle(
                          fontSize:
                          Theme.of(context).textTheme.titleLarge!.fontSize,
                          color: AppColor.dark,
                          fontWeight: FontWeight.w700),
                    ),
                    AppSize.SpaceHeight(5),
                    Text(
                      "Enter your phone number,we will send\n a authentication code",
                      style: TextStyle(
                          color: AppColor.grey,
                          fontSize:
                          Theme.of(context).textTheme.bodySmall!.fontSize),
                    ),
                    const SizedBox(height: 30,),
                    SizedBox(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: const Text("Type your phone number"),
                          prefixIcon: PopupMenuButton(
                            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              elevation: 0,
                              position: PopupMenuPosition.over,
                              itemBuilder: (BuildContext context) {
                                return [
                                  PopupMenuItem(child: Text("hello1")),
                                  PopupMenuItem(child: Text("hello2")),
                                  PopupMenuItem(child: Text("hello3")),
                                  PopupMenuItem(child: Text("hello4")),
                                  PopupMenuItem(child: Text("hello5")),
                                  PopupMenuItem(child: Text("hello1")),
                                  PopupMenuItem(child: Text("hello2")),
                                  PopupMenuItem(child: Text("hello3")),
                                  PopupMenuItem(child: Text("hello4")),
                                  PopupMenuItem(child: Text("hello5")),
                                  PopupMenuItem(child: Text("hello1")),
                                  PopupMenuItem(child: Text("hello2")),
                                  PopupMenuItem(child: Text("hello3")),
                                  PopupMenuItem(child: Text("hello4")),
                                  PopupMenuItem(child: Text("hello5")),
                                ];
                              },
                              child: Icon(Icons.flag)),
                        ),
                      ),
                    ),
                    AppSize.SpaceHeight(50),
                    MaterialButton(
                      height: 50,
                      minWidth: AppSize.Maxwidth,
                      color: AppColor.blue,
                      elevation: 0,
                      clipBehavior: Clip.none,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      onPressed: () {
                         Get.to(()=>const SignUpVerifyCodePhone());
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
