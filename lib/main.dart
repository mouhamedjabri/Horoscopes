import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:horoscopes/views/screens/DeatilesPage.dart';
import 'package:horoscopes/views/screens/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Horoscopes',
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=>MyHomePage()),
        GetPage(name: "/DeatilesPage", page: ()=>DeatilesPage()),
      ],
    );
  }
}

