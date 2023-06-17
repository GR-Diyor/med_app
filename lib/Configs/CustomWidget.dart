import 'package:flutter/material.dart';
import 'package:med_app/Configs/AppColor.dart';
import 'package:med_app/Configs/AppSetting.dart';

class CustomWidget{

  static PreferredSizeWidget appBar(){
    return AppBar(
      backgroundColor: AppColor.primary,
      foregroundColor: AppColor.primary,
      systemOverlayStyle: AppSetting.defaultUIOverlay,
      bottomOpacity: 0.0,
      elevation: 0.0,
       scrolledUnderElevation: 0.0,
      automaticallyImplyLeading: true,
    );
  }

}