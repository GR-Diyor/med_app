import 'package:flutter/material.dart';
import 'package:med_app/Resource/AppColor.dart';
import 'package:med_app/Resource/AppSize.dart';

class ScheduleUpcoming extends StatefulWidget {
  const ScheduleUpcoming({Key? key}) : super(key: key);

  @override
  State<ScheduleUpcoming> createState() => _ScheduleUpcomingState();
}

class _ScheduleUpcomingState extends State<ScheduleUpcoming> {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSize.paddingScreen,
      height: AppSize.Maxheight,
      color: AppColor.primary.withOpacity(0.99),
      child: Column(
        children: [
          SizedBox(
            height: AppSize.height(context) / 6,
            child: Card(
              color: AppColor.primary,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Appointment date",
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontSize,
                                  color: AppColor.grey.withOpacity(.5)),
                            ),
                            AppSize.SpaceHeight(5),
                            Text(
                              "🕐️ Wed Jun 20 8:00 - 8:30 AM",
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontSize,
                                  color: AppColor.dark,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const Icon(Icons.more_vert_outlined),
                      ],
                    ),
                    const Divider(),
                    Expanded(
                        flex: 1,
                        child: FittedBox(
                          child: Row(
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
                        )),
                  ],
                ),
              ),
            ),
          ),
          AppSize.SpaceHeight(10),
          SizedBox(
            height: AppSize.height(context) / 6,
            child: Card(
              color: AppColor.primary,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Appointment date",
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontSize,
                                  color: AppColor.grey.withOpacity(.5)),
                            ),
                            AppSize.SpaceHeight(5),
                            Text(
                              "🕐️ Wed Jun 20 8:00 - 8:30 AM",
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontSize,
                                  color: AppColor.dark,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const Icon(Icons.more_vert_outlined),
                      ],
                    ),
                    const Divider(),
                    Expanded(
                        flex: 1,
                        child: FittedBox(
                          child: Row(
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
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


