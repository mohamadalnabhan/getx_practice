import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controller/home_controller.dart';

//
class PageTwoo extends StatelessWidget {
  PageTwoo({super.key});
   
  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PageTwoo")),
      body: Center(
        child: GetBuilder<HomeController>(
          builder:
              (controller) => Text(
                "Counter Value: ${controller.counter}",
                style: const TextStyle(fontSize: 28),
              ),
        ),
      ),
    );
  }
}
