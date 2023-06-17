import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_app/Configs/AppColor.dart';
import 'package:med_app/Configs/AppSetting.dart';
import 'package:med_app/Configs/AppSize.dart';
import 'package:med_app/UI/Forgot_password/forgot_main.dart';
import 'package:med_app/UI/Registration/Sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  void initState() {
    AppSetting.manualScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: SingleChildScrollView(
        physics: const PageScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          margin: EdgeInsets.only(top:AppSize.height(context) / 6),
          height: AppSize.height(context),
          width: AppSize.width(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back!",
                style: TextStyle(
                    fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
                    color: AppColor.dark,
                    fontWeight: FontWeight.w700),
              ),
              AppSize.SpaceHeight(5),
              Text(
                "Sign In to your account",
                style: TextStyle(
                    color: AppColor.grey,
                    fontSize: Theme.of(context).textTheme.bodySmall!.fontSize),
              ),
              AppSize.SpaceHeight(20),
              MaterialButton(
                  onPressed: () {},
                  minWidth: AppSize.Maxwidth,
                  shape:Border.all(width: 1,color: const Color.fromRGBO(233, 236, 242, 1),strokeAlign: BorderSide.strokeAlignOutside),
                  color: Colors.white,
                  elevation: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      Image.asset("assets/login/google2.png",fit: BoxFit.fill,height: 20,width: 20,),
                    //  SvgPicture.asset("assets/login/google.svg",fit: BoxFit.fill,height: 20,width: 20,),
                      AppSize.SpaceWidth(10),
                      const Text("Sign in with Google"),
                    ],
                  )),
              AppSize.SpaceHeight(20),
              //or
              Row(
                children: const [
                  Expanded(child: Divider(height: 1,)),
                  Padding(padding: EdgeInsets.only(left: 10,right: 10),child: Text("OR"),),
                  Expanded(child: Divider(height: 1,)),
                ],
              ),
              //
              AppSize.SpaceHeight(20),
              //email

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

              //
              AppSize.SpaceHeight(20),

              //password

               TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline,color: Colors.grey,),
                  suffixIcon: Icon(Icons.visibility_off_outlined,color: Colors.grey,),
                    labelText: "Type your password",
                ),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              //
              AppSize.SpaceHeight(10),

              //forgot
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                    onTap: ()=>Get.to(const ForgotMain()),
                    child: Text("Forgot Password?",style: TextStyle(color: AppColor.blue,fontWeight: FontWeight.bold),)),
              ),


              //
              AppSize.SpaceHeight(60),

              MaterialButton(
                height: 50,
                minWidth: AppSize.Maxwidth,
                color: AppColor.blue,
                elevation: 0,
                clipBehavior: Clip.none,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                onPressed: (){

                },
                child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: Theme.of(context).textTheme.titleMedium!.fontSize),),
              ),
              const SizedBox(height: 15,),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text.rich(
                  TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(color: AppColor.grey,fontSize: Theme.of(context).textTheme.titleSmall!.fontSize),
                      children: [
                        WidgetSpan(
                            child: GestureDetector(
                              onTap:(){
                               Get.to(()=>const SignUp(),duration: const Duration(milliseconds: 200),transition: Transition.noTransition);
                              },
                              child: Text("Sign Up",
                                style: TextStyle(color: AppColor.blue,fontSize: Theme.of(context).textTheme.titleSmall!.fontSize),),
                            )
                        ),

                      ]
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
