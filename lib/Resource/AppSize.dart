
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
  static Widget SpaceHeight(int h){
   return SizedBox(height: h.toDouble(),);
  }
  static Widget SpaceWidth(int w){
    return SizedBox(width: w.toDouble(),);
  }

  static EdgeInsets paddingScreen=const EdgeInsets.only(left: 20,right: 20);
}