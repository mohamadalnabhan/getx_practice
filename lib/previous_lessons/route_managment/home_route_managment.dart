import "package:flutter/material.dart";
import "package:get/get_core/src/get_main.dart";
import 'package:get/get.dart';
import 'pageone.dart';
import 'pagethree.dart';
import 'pageone.dart';
import "package:getx_practice/previous_lessons/route_managment/pagetwo.dart"; 


class HomeRouteManagment extends StatelessWidget {
  const HomeRouteManagment({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
   appBar: AppBar(title: const Text("home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Get.to(PageOne());
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text("page 1"),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                Get.to(PageTwo());
              },
              color: Colors.green,
              textColor: Colors.white,
              child: const Text("page 2"),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                Get.to(PageThree());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text("Button 3"),
            ),
              const SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                Get.back();
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text("back"),
            ),
          ],
        ),
      ),
    );
  }
}