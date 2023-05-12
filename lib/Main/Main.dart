import 'package:flutter/material.dart';
import 'package:med_app/UI/Home/home1.dart';
import 'package:med_app/UI/Home/home2.dart';

import '../Resource/AppColor.dart';
import '../Resource/AppSetting.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  @override
  void initState() {
    AppSetting.manualScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColor.primary,
      body: PageView(
        allowImplicitScrolling: true,
        physics: const ClampingScrollPhysics(),
        clipBehavior: Clip.none,
        children: const [
          Home1(),
          Home2(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (v){},
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items:  [
          const BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          const BottomNavigationBarItem(icon: Icon(Icons.list_alt),label: ""),
          BottomNavigationBarItem(icon: Container(
            alignment: Alignment.center,
            height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.blue
              ),
              child:  Icon(Icons.add,color: AppColor.primary,)),label: ""),
          const BottomNavigationBarItem(icon: Icon(Icons.message),label: ""),
          const BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: ""),
        ],
      ),
    );
  }
}
