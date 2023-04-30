
import 'package:flutter/cupertino.dart';

class AppSize{
  static double Maxheight=double.maxFinite;
  static double Maxwidth=double.maxFinite;
 static double height(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
  static double width(BuildContext context){
    return MediaQuery.of(context).size.width;
  }
}