import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:horoscopes/const/const.dart';

import '../../controller/myHomePageController.dart';
import '../widget/horoscope_item.dart';


class MyHomePage extends StatelessWidget {
   MyHomePage({Key? key}) : super(key: key);
  //MyhomePageController controller = Get.put(MyhomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: GetBuilder<MyhomePageController>(
          init:MyhomePageController(),
          builder: (controller){
            print("rebuild");
            return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              controller.isScroll ==true? Center(child: Column(
                  children: [
                    Image.asset(logo,width: MediaQuery.of(context).size.width*0.5,height: MediaQuery.of(context).size.height*0.2),
                    Text("Zodiac",style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                        fontWeight: FontWeight.w600
                    ),),
                  ],
                )):Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 10),
                      child: Image.asset(logo,width: MediaQuery.of(context).size.width*0.2,height: MediaQuery.of(context).size.height*0.1),
                    ),
                    Text("Zodiac",style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      fontWeight: FontWeight.w600
                    ),),
                  ],
                ),
             Expanded(
               child: ListView(
                 controller: controller.scrollcontroller,
                 shrinkWrap: true,
                 children: List.generate(horoscopList.length, (index) => HoroscopItem(titel: horoscopList[index]["titel"].toString(),time: horoscopList[index]["time"].toString(),imagePath: horoscopList[index]["img"].toString(),)),
               ),
             ),
            ],
          );},
        ),
      ),
    );
  }
}
