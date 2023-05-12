import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:med_app/Resource/AppSize.dart';

import '../../Resource/AppColor.dart';
import '../../Resource/AppSetting.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
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
      appBar: AppBar(
        //backgroundColor: AppColor.transparent,
        elevation: 0.0,
        bottomOpacity: 0.0,
        foregroundColor: AppColor.transparent,
        backgroundColor: AppColor.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SizedBox(
        height: AppSize.height(context),
        width: AppSize.width(context),
        child: Stack(
          fit: StackFit.expand,
          children: [
            //background gradient
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: AppSize.height(context) * 0.5,
                  width: AppSize.width(context),
                  alignment: Alignment.topCenter,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        "assets/home/Hom2Gradient.svg",
                        fit: BoxFit.cover,
                        width: AppSize.width(context),
                      ),
                      Container(
                        width: AppSize.width(context),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: AppColor.primary.withOpacity(0.7)),
                            BoxShadow(color: AppColor.grey.withOpacity(0.1))
                          ],
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.topRight,
                            tileMode: TileMode.clamp,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.2),
                              Color.fromRGBO(104, 219, 255, 0.2),
                              Color.fromRGBO(104, 219, 255, 0.3),
                              Color.fromRGBO(37, 124, 255, 0.15),
                              Color.fromRGBO(37, 124, 255, 0.2),
                              Color.fromRGBO(37, 124, 255, 0.3),
                              Color.fromRGBO(37, 124, 255, 0.4),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: AppSize.height(context) / 10,
                            left: 20,
                            right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/home/Person1.png"),
                              radius: 30,
                            ),
                            Container(
                                height: 45,
                                width: 45,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: AppColor.primary,
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.notifications_outlined,
                                  color: AppColor.dark,
                                  size: 30,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 20,
                            right: 20),
                        width: AppSize.width(context),
                        child: Row(
                          children: [
                            Expanded(child: Padding(
                              padding:  EdgeInsets.only(bottom: 20.0,top: AppSize.height(context) / 4,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Welocme",style: TextStyle(
                                    color: AppColor.dark,fontWeight: FontWeight.w700,
                                    fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
                                  ),),
                                  Text("Kimdir",style: TextStyle(
                                    color: AppColor.dark,fontWeight: FontWeight.w700,
                                    fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
                                  ),),
                                  Text("Have a  nice day",style: TextStyle(
                                    color: AppColor.grey,fontWeight: FontWeight.w400,
                                    fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                                  ),),
                                  Container(
                                    width: AppSize.width(context) / 2.6,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: AppColor.red,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(
                                          Icons.wb_twilight,
                                          color: AppColor.primary,
                                          size: 20,
                                        ),
                                        Text(
                                          "Urgent Care",
                                          style: TextStyle(
                                              color: AppColor.primary,
                                              fontSize: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium!
                                                  .fontSize),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                            Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(top: AppSize.height(context) / 6.5),
                                  child: Image.asset(
                              "assets/home/Person2.png",
                              fit: BoxFit.cover,
                            ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey.withOpacity(0.1),
                  ),
                ),
              ],
            ),

            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const ClampingScrollPhysics(),
              child: Container(
                margin: EdgeInsets.only(top: AppSize.height(context) * .49),
                width: AppSize.width(context),
                height: AppSize.height(context)/1.5,
                child: Card(
                  color: AppColor.primary,
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25,left: 20,right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //ecare service
                        const Text(
                          "Ecare Services",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        AppSize.SpaceHeight(20),
                        SizedBox(
                          height: 110,
                          width: AppSize.Maxwidth,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: SizedBox(
                                    height: 90,
                                    width: 90,
                                    child: FittedBox(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          FittedBox(
                                            child: Container(
                                              height: 70,
                                              width: 70,
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle),
                                              child: SvgPicture.asset(
                                                "assets/home/logo1.svg",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          AppSize.SpaceHeight(10),
                                          const Text("Consultation")
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: SizedBox(
                                    height: 90,
                                    width: 90,
                                    child: FittedBox(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          FittedBox(
                                            child: Container(
                                              height: 70,
                                              width: 70,
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle),
                                              child: Image.asset(
                                                  "assets/home/logo2.png"),
                                            ),
                                          ),
                                          AppSize.SpaceHeight(10),
                                          const Text("Medicines")
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: SizedBox(
                                    height: 90,
                                    width: 90,
                                    child: FittedBox(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          FittedBox(
                                            child: Container(
                                              height: 70,
                                              width: 70,
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle),
                                              child: SvgPicture.asset(
                                                  "assets/home/logo3.svg"),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text("Ambulance")
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        AppSize.SpaceHeight(30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            const Text(
                              "My Appointment",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("See All",style: TextStyle(color: AppColor.blue),),
                          ],
                        ),
                        AppSize.SpaceHeight(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            const Text(
                              "Appointment date",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  ),
                            ),
                            Icon(Icons.more_vert_outlined,color: AppColor.grey,),
                          ],
                        ),
                        AppSize.SpaceHeight(5),
                        Row(
                          children: [
                            Icon(
                              Icons.alarm,
                              color: AppColor.grey.withOpacity(0.4),
                            ),
                            AppSize.SpaceWidth(5),
                            const Text("Wed Jun 20"),
                          ],
                        ),

                        AppSize.SpaceHeight(15),
                        Divider(height: 1,color: AppColor.grey,),
                        SizedBox(
                          height: 110,
                          width: AppSize.Maxwidth,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    const CircleAvatar(
                                      backgroundImage:
                                      AssetImage("assets/home/Person1.png"),
                                    ),
                                    AppSize.SpaceWidth(15),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "dr. Nirmala Azalea",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("Orthopedic"),

                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
