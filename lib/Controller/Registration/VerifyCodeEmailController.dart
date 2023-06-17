import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:med_app/Configs/AppColor.dart';

class VerifyCodeEmailController extends GetxController{
  bool iSActive=false;

  @override
  void onInit() {
    iSActive=false;
    super.onInit();
  }

  Widget WidgetCodeField(BuildContext context,int id,bool active) {

    return Container(
      height: 56,
      width: 56,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(26),
        color: active?AppColor.primary:AppColor.grey.withOpacity(0.2),
        border: Border.all(width: active?1:0.3,color: active?Colors.blue:Colors.grey),
      ),
      child:  TextField(
        // focusNode: FocusScopeNode(canRequestFocus: true,skipTraversal: true),
        clipBehavior: Clip.antiAlias,
         keyboardType: const TextInputType.numberWithOptions(decimal: false,signed: true),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        textInputAction: TextInputAction.done,
         autofocus: true,
         textAlignVertical: TextAlignVertical.center,
         onChanged: (v){
          if(v.length==1){
            FocusScope.of(context).nextFocus();
            active=true;

          }
         },
         decoration: const InputDecoration(
           border: InputBorder.none,
           filled: true,
           focusedBorder: InputBorder.none,
           errorBorder: InputBorder.none,
           enabledBorder: InputBorder.none,
           disabledBorder: InputBorder.none,
         ),
        style: const TextStyle(color: Colors.black,fontSize: 20,),
        textAlign: TextAlign.center,
        cursorColor: Colors.transparent,
        cursorWidth: 0.0,
      ),
    );
  }
}