import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_app/Controller/Registration/SignUpController.dart';
import 'package:med_app/Configs/AppColor.dart';
import 'package:med_app/UI/Registration/Sign_in.dart';
import 'package:med_app/UI/Registration/VerifyCodeEmail.dart';

import '../../Configs/AppSize.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.offAll(() => const SignIn());
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 18,
              color: Colors.black,
            )),
        backgroundColor: AppColor.primary,
        elevation: 0,
        bottomOpacity: 0,
      ),
      body: GetBuilder<SignUpController>(
          init: SignUpController(),
          builder: (_) {
            return SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                margin: EdgeInsets.only(top: AppSize.height(context) / 6),
                height: AppSize.height(context) + 100,
                width: AppSize.width(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.titleLarge!.fontSize,
                          color: AppColor.dark,
                          fontWeight: FontWeight.w700),
                    ),
                    AppSize.SpaceHeight(5),
                    Text(
                      "Create account and enjoy all services",
                      style: TextStyle(
                          color: AppColor.grey,
                          fontSize:
                              Theme.of(context).textTheme.bodySmall!.fontSize),
                    ),
                    AppSize.SpaceHeight(20),
                    MaterialButton(
                        onPressed: () {},
                        minWidth: AppSize.Maxwidth,
                        shape: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(233, 236, 242, 1),
                            strokeAlign: BorderSide.strokeAlignOutside),
                        color: Colors.white,
                        elevation: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/login/google2.png",
                              fit: BoxFit.fill,
                              height: 20,
                              width: 20,
                            ),
                            //  SvgPicture.asset("assets/login/google.svg",fit: BoxFit.fill,height: 20,width: 20,),
                            AppSize.SpaceWidth(10),
                            const Text("Sign in with Google"),
                          ],
                        )),
                    AppSize.SpaceHeight(20),
                    //or
                    Row(
                      children: const [
                        Expanded(
                            child: Divider(
                          height: 1,
                        )),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Text("OR"),
                        ),
                        Expanded(
                            child: Divider(
                          height: 1,
                        )),
                      ],
                    ),
                    //
                    AppSize.SpaceHeight(20),

                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline_outlined,
                            color: Colors.grey,
                          ),
                          labelText: "Type your username"),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    //
                    AppSize.SpaceHeight(20),

                    //email

                    TextFormField(
                      onChanged: (value) {
                        Get.find<SignUpController>().Action(value);
                      },
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.grey,
                          ),
                          labelText: "Type your email"),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    //
                    AppSize.SpaceHeight(20),

                    //password

                    TextFormField(
                      decoration:  InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: Colors.grey,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: (){
                            Get.find<SignUpController>().isVisiblePassword();
                          },
                          child: Icon(
                            Get.find<SignUpController>().isVisible? Icons.visibility_off_outlined:Icons.visibility_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        labelText: "Type your password",
                      ),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      obscureText: Get.find<SignUpController>().isVisible,
                    ),
                    //

                    AppSize.SpaceHeight(12),
                    //
                    Get.find<SignUpController>().isValide
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Get.find<SignUpController>().WidgetValidate(
                                  value: true,
                                  onChanged: (v) {},
                                  title:  Text("Miniaml 8 characters",style: TextStyle(fontSize: 14,color: AppColor.grey),)),
                              Get.find<SignUpController>().WidgetValidate(
                                value: false,
                                onChanged: (v) {},
                                title:  Text("Atleast 1 number (1-9)",style: TextStyle(fontSize: 14,color: AppColor.grey),),
                              ),
                              Get.find<SignUpController>().WidgetValidate(
                                value: true,
                                onChanged: (v) {},
                                title:  Text(
                                    "Atleast lowercase or uppercase letters",style: TextStyle(fontSize: 14,color: AppColor.grey)),
                              ),
                            ],
                          )
                        : const SizedBox.shrink(),

                    //
                    AppSize.SpaceHeight(12),
                    //
                    FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                          const Text.rich(
                            textAlign: TextAlign.start,
                            TextSpan(text: "I agree to the company", children: [
                              TextSpan(text: "Term of Services"),
                              TextSpan(text: "and\n"),
                              TextSpan(text: "Privacy Police")
                            ]),
                          ),
                        ],
                      ),
                    ),
                    //
                    AppSize.SpaceHeight(30),

                    MaterialButton(
                      height: 50,
                      minWidth: AppSize.Maxwidth,
                      color: AppColor.blue,
                      elevation: 0,
                      clipBehavior: Clip.none,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      onPressed: () {
                        Get.to(()=>const VerifyCodeEmail());
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .fontSize),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text.rich(
                        TextSpan(
                            text: "Have an account? ",
                            style: TextStyle(
                                color: AppColor.grey,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .fontSize),
                            children: [
                              WidgetSpan(
                                  child: GestureDetector(
                                onTap: () {
                                  Get.offAll(() => const SignIn(),
                                      duration:
                                          const Duration(milliseconds: 200),
                                      transition: Transition.noTransition);
                                },
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      color: AppColor.blue,
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .fontSize),
                                ),
                              )),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
