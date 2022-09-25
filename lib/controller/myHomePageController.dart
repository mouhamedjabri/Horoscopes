import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyhomePageController extends GetxController {
  bool isScroll=true;
  ScrollController? scrollcontroller;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    scrollcontroller = ScrollController();
    scrollcontroller!.addListener(() {
      if (scrollcontroller!.offset.toInt() <2){
        print(scrollcontroller!.offset.toInt());
        isScroll = true;
        update();
      }else{
        isScroll = false;
        update();
      }
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    scrollcontroller!.dispose();
  }
}