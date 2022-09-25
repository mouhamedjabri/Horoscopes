import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import '../const/const.dart';
import '../moudel/horosope_moudel.dart';


class DeatilesPageController extends GetxController with SingleGetTickerProviderMixin{
  TabController? tabController;
   Horoscopes? horoscopes ;
  int? index;
  DeatilesPageController(this.index);
  Future getDataFromApi()async{
    String link = horoscopList[index!]["url"].toString();
    var url = Uri.parse(link);
    var respons = await  http.get(url);
    if(respons.statusCode == 200){
      try{
        var bodey = respons.body;
        var data = jsonDecode(bodey);
          horoscopes = Horoscopes.fromJson(data);
          update();
        print(horoscopes!.horoscope);
      }catch(e){

      }
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(length: 2,vsync: this);
    getDataFromApi();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    tabController!.dispose();
  }
}