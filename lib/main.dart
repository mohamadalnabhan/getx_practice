import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/previous_lessons/dependency_injection/home_inj.dart';
import 'package:getx_practice/previous_lessons/getx_obx/home_go.dart';
import 'package:getx_practice/utils/Mybindings.dart';
import 'package:getx_practice/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomeInj(),
     initialBinding: Mybindings(),
     initialRoute: "/",
     getPages: [
      GetPage(name: "/", page: ()=> HomeInj()),
     ],
    );
  }
}
