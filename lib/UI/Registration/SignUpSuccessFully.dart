import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Resource/AppColor.dart';
import '../../Resource/AppSize.dart';

class SignUpSuccessFully extends StatelessWidget {
  const SignUpSuccessFully({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bottonPrimary,
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        height: AppSize.height(context),
        width: AppSize.width(context),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: AppSize.height(context)/2-(AppSize.height(context)/4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: const Icon(
                      Icons.done,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                  AppSize.SpaceHeight(40),
                  Text(
                    "Account Verified",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize:
                            Theme.of(context).textTheme.titleMedium!.fontSize),
                  ),
                  AppSize.SpaceHeight(8),
                  Text(
                    "Your account has been verified succesfully",
                    style: TextStyle(
                        color: Colors.white, fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 36.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                  height: 50,
                  minWidth: AppSize.Maxwidth,
                  color: AppColor.primary,
                  elevation: 0,
                  clipBehavior: Clip.none,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  onPressed: () {
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: AppColor.bottonPrimary,
                        fontSize:
                            Theme.of(context).textTheme.titleMedium!.fontSize),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
