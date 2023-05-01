import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
typedef ValueChanged<T> = void Function(T value);
class SignUpController extends GetxController{
 bool isValide=false;
 bool isVisible=true;
  Widget WidgetValidate({required bool value,ValueChanged<bool>? onChanged , required Text title}){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(value?Icons.done:Icons.cancel_outlined,color: value?Colors.green:Colors.red,size: 16,),
          const SizedBox(width: 10,),
          title
        ],
      ),
    );
  }

  void isVisiblePassword(){
    isVisible=isVisible?false:true;
    update();
  }
  void Action(String? value){
    isValide=true;
    update();
  }
}