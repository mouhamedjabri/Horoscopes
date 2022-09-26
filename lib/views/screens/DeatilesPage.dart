import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horoscopes/const/const.dart';

import '../../controller/deatilesPageController.dart';

class DeatilesPage extends StatelessWidget {
   DeatilesPage({Key? key}) : super(key: key);
  dynamic data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(onTap: (){
          Get.back();
        },
        child: Icon(Icons.arrow_back_ios,size: 40,),),
      ),
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Center(
              child: Column(
                children: [
                  Expanded(child: Image.asset(horoscopList[data[0]]["img-B"].toString())),
                  SizedBox(
                      height: MediaQuery.of(context).size.height*0.02
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(horoscopList[data[0]]["img"].toString(),height: MediaQuery.of(context).size.height*0.04,color: Colors.white,),
                      Text(
                        horoscopList[data[0]]["titel"].toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
            )),
            Expanded(

                child: GetBuilder<DeatilesPageController>(
                    init: DeatilesPageController(data[0]),
                    builder: (cntroller) {
                      return cntroller.horoscopes != null?Column(
                        children: [
                          TabBar(

                            controller: cntroller.tabController,
                            tabs: [
                              Tab(text: "Today",),
                              Tab(text: "Generally",),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: cntroller.tabController,
                              children: [
                                SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
                                    child: Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                            cntroller.horoscopes!.date,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20),
                                          ),
                                          SizedBox(
                                              height: MediaQuery.of(context).size.height*0.01
                                          ),
                                          Text(
                                            cntroller.horoscopes!.horoscope,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20),
                                          ),
                                        ],
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                      ),
                                    ),
                                  ),
                                ),
                                SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
                                    child: Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                            horoscopList[data[0]]["time"].toString(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context).size.height*0.01
                                          ),
                                          Text(
                                            horoscopList[data[0]]["descreption"].toString(),
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20),
                                          ),
                                        ],
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ):Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
