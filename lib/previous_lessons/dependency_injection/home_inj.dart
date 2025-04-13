import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controller/home_controller.dart';
import 'package:getx_practice/previous_lessons/dependency_injection/pageonee.dart';
import 'package:getx_practice/previous_lessons/dependency_injection/pagetwoo.dart';

class HomeInj extends StatelessWidget {
   HomeInj({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dependency_injection"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => const PageOnee());
              },
              child: const Text("Go to PageOnee"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.to(() =>  PageTwoo());
              },
              child: const Text("Go to PageTwoo"),
            ),
          ],
        ),
      ),
    );
  }
}


