import 'package:flutter/material.dart';

class AppSize{
  static Widget FullScreen(BuildContext context,Widget child){
    return SizedBox(
    height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: child,
    );
  }
}