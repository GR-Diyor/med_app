import 'package:flutter/material.dart';
import 'package:med_app/UI/Home/home1.dart';

import '../../Configs/AppColor.dart';
import '../../Configs/AppSetting.dart';
import '../../Configs/AppSize.dart';
import '../Schedule/Schedule_Main.dart';


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

  void NativeBottomSheet(){
    showBottomSheet(context: context, builder:(BuildContext context)=>SizedBox(
      height: AppSize.height(context)*0.6,
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0,left: 20,right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage:
                  const AssetImage("assets/home/Person2.png"),
                  radius: 20,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 20,
                      width: 20,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.videocam,
                        color: AppColor.primary,
                        size: 12,
                      ),
                    ),
                  ),
                ),
                AppSize.SpaceWidth(10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "dr. Nirmala Azalea",
                      style: TextStyle(
                          fontSize: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .fontSize,
                          color: AppColor.dark,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Orthopedic",
                      style: TextStyle(
                          fontSize: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .fontSize,
                          color: AppColor.grey.withOpacity(.7)),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    )
    );
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
        //  Home2(),
         // Home3(),
          ScheduleMain(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>NativeBottomSheet(),
        child:  Icon(Icons.add,color: AppColor.primary,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (v){

        },
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
                color: AppColor.transparent
              ),
              child:  Icon(Icons.add,color: AppColor.primary,)),label: ""),
          const BottomNavigationBarItem(icon: Icon(Icons.message),label: ""),
          const BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: ""),
        ],
      ),
    );
  }
}
