import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:med_app/Controller/Schedule/ScheduleMainController.dart';
import 'package:med_app/Configs/AppColor.dart';
import 'package:med_app/Configs/AppSetting.dart';
import 'package:med_app/UI/Schedule/Schedule_Past.dart';
import 'package:med_app/UI/Schedule/Schedule_Upcoming.dart';

import '../../Configs/AppSize.dart';

class ScheduleMain extends StatefulWidget {
  const ScheduleMain({Key? key}) : super(key: key);

  @override
  State<ScheduleMain> createState() => _ScheduleMainState();
}

class _ScheduleMainState extends State<ScheduleMain> with SingleTickerProviderStateMixin{

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
      appBar: AppBar(
        backgroundColor: AppColor.transparent,
        elevation: 0,
        bottomOpacity: 0,
        foregroundColor: AppColor.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: GetBuilder<ScheduleMainController>(
        init: ScheduleMainController(),
        builder: (_) => DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    top: AppSize.height(context) / 10, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Schedule",
                      style: TextStyle(
                          color: AppColor.dark,
                          fontSize: Theme.of(context)
                              .primaryTextTheme
                              .headlineSmall!
                              .fontSize,
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      child: Container(
                          height: 45,
                          width: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColor.grey.withOpacity(0.1),
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.notifications_outlined,
                            color: AppColor.dark,
                            size: 30,
                          )),
                    )
                  ],
                ),
              ),
              Container(
                width: AppSize.Maxwidth,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: ButtonsTabBar(
                  radius: 12,
                  height: 60,
                  unselectedBackgroundColor:  AppColor.transparent,
                  backgroundColor: Colors.white,
                  splashColor: Colors.white24,
                  physics: const ClampingScrollPhysics(),
                  unselectedLabelStyle: const TextStyle(
                      color: Color.fromRGBO(36, 43, 66, 1) ,fontSize: 17),
                  labelStyle: const TextStyle(
                      color: Colors.black, fontSize: 17,fontWeight: FontWeight.bold),
                  buttonMargin: const EdgeInsets.all(5),
                  tabs: [
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        width: (MediaQuery
                            .of(context)
                            .size
                            .width - 54) / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40)
                        ),
                        child: const Text(
                          "Upcoming",
                          style: TextStyle(
                               color: Colors.black,
                              fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        width: (MediaQuery
                            .of(context)
                            .size
                            .width - 54) / 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)
                        ),
                        child: const Text(
                          "Past",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17, ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  physics: ClampingScrollPhysics(),
                  children: <Widget> [
                    ScheduleUpcoming(),
                    SchedulePast(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}