import "package:flutter/material.dart";
import "package:get/get_core/src/get_main.dart";
import 'package:get/get.dart';
import "package:getx_practice/controller/home_controller.dart";
//get to push
// get back pop
// get off push with replacment
// getoffall push and remove until and it removes all of the pages inside the stack
class HomeGo extends StatefulWidget {
  const HomeGo({super.key});

  @override
  State<HomeGo> createState() => _HomeGoState();
}

class _HomeGoState extends State<HomeGo> {
  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(title: const Text("home")),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      controller.addition();
                    },
                    icon: const Icon(Icons.add),
                  ),
                  Text("${controller.counter}"),
                  IconButton(
                    onPressed: () {
                      controller.subtraction();
                    },
                    icon: const Icon(Icons.remove),
                  ),
                ],
              ),
            ),
            Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.addition2();
                      },
                      icon: const Icon(Icons.add),
                    ),
                    Text("${controller.counter2}"),
                    IconButton(
                      onPressed: () {
                        controller.subtraction2();
                      },
                      icon: const Icon(Icons.remove),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
