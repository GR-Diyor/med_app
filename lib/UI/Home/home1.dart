import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:med_app/Resource/AppColor.dart';
import 'package:med_app/Resource/AppSetting.dart';
import 'package:med_app/Resource/AppSize.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
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
        //backgroundColor: AppColor.transparent,
        elevation: 0.0,
        bottomOpacity: 0.0,
         foregroundColor: AppColor.transparent,
        backgroundColor: AppColor.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: AppSize.height(context)/3.5,
                width: AppSize.Maxwidth,
                padding: AppSize.paddingScreen,
                decoration: BoxDecoration(
                    color: AppColor.blue,
                    image: const DecorationImage(
                      image: AssetImage("assets/home/Home1Gradient.png"),
                      //colorFilter: ColorFilter.srgbToLinearGamma(),
                      fit: BoxFit.fitWidth,
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/home/Person1.png"),
                      radius: 30,
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined,color: AppColor.primary,size: 30,))
                  ],
                ),
              ),
              Expanded(child:
              Container(
                color: Colors.black.withOpacity(.1),
              ),

              ),

            ],
          ),
          //body
          Container(
            padding:AppSize.paddingScreen,
            height: AppSize.height(context),
            width: AppSize.Maxwidth,
            margin: EdgeInsets.only(top:AppSize.height(context)/4.5),
            color: AppColor.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //info card
                SizedBox(
                  height: 210,
                  width: AppSize.Maxwidth,
                  child: Stack(
                    children: [
                      Container(
                        height: 193,
                        width: AppSize.Maxwidth,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              blurStyle: BlurStyle.outer,
                            ),
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurStyle: BlurStyle.outer,
                            ),
                            BoxShadow(
                              color: Colors.grey.shade400,
                              blurStyle: BlurStyle.outer,
                            ),
                          ],
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text("Welcome back!",style: TextStyle(
                                    fontSize: 22
                                  ),),
                                  Text("Zafera Aleva",style: TextStyle(
                                      fontSize: 30,fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(height: 20),
                                  Text("Need instant treatment?",style: TextStyle(
                                      fontSize: 18
                                  ),),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width:AppSize.width(context)/2.6,
                          height: 50,
                          decoration: BoxDecoration(
                            color: AppColor.red,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.wb_twilight,color: AppColor.primary,size: 20,),
                              Text("Urgent Care",
                                style: TextStyle(
                                    color: AppColor.primary,
                                    fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //gap
                AppSize.SpaceHeight(15) ,
                //ecare service
                const Text("Ecare Services",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                AppSize.SpaceHeight(20),
                SizedBox(
                  height: 110,
                  width: AppSize.Maxwidth,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: SizedBox(
                                height: 110,
                                width: 100,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle
                                      ),
                                      child:SvgPicture.asset("assets/home/logo1.svg",fit: BoxFit.cover,),
                                    ),
                                    AppSize.SpaceHeight(10),
                                    const Text("Consultation")
                                  ],
                                ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: SizedBox(
                              height: 110,
                              width: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle
                                    ),
                                    child:Image.asset("assets/home/logo2.png"),
                                  ),
                                  AppSize.SpaceHeight(10),
                                  const Text("Medicines")
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:20.0),
                            child: SizedBox(
                              height: 110,
                              width: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle
                                    ),
                                    child:SvgPicture.asset("assets/home/logo3.svg"),
                                  ),
                                  const SizedBox(height: 10,),
                                  const Text("Ambulance")

                                ],
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
                  children: const [
                    Text("My Appointment",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                    Text("See All"),
                  ],
                ),
                AppSize.SpaceHeight(10),
                Row(
                  children:  [
                    Icon(Icons.alarm,color: AppColor.grey.withOpacity(0.4),),
                    AppSize.SpaceWidth(5),
                    const Text("Wed Jun 20"),
                  ],
                ),
                AppSize.SpaceHeight(15),
                SingleChildScrollView(
                  child: Container(
                    height: 110,
                    width: AppSize.Maxwidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: AppColor.grey.withOpacity(0.2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage("assets/home/Person1.png"),
                              ),
                              AppSize.SpaceWidth(15),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("dr. Nirmala Azalea",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                  const Text("Orthopedic"),
                                  MaterialButton(
                                      onPressed: (){},
                                      height: 24,
                                      color: AppColor.grey,
                                      child: Text("Pending Payment",style: TextStyle(color: AppColor.primary),)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.navigate_next),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
