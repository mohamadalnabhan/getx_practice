import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/malware_pra/admin.dart';
import 'package:getx_practice/malware_pra/home_mal.dart';
import 'package:getx_practice/malware_pra/login.dart';
import 'package:getx_practice/malware_pra/malware/auth_middlware.dart';
import 'package:getx_practice/previous_lessons/dependency_injection/home_inj.dart';
import 'package:getx_practice/previous_lessons/getx_obx/home_go.dart';
import 'package:getx_practice/utils/Mybindings.dart';
import 'package:getx_practice/view/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      initialBinding: Mybindings(),
      initialRoute: "/",
      getPages: [
         GetPage(name: "/home", page: () => HomeMal()),
        GetPage(name: "/", page: () => Login() ,middlewares: [
          AuthMiddlware()
        ]),
        GetPage(name: "/admin", page: () => Admin()),
      ],
    );
  }
}
