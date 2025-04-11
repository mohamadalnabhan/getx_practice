import 'package:flutter/material.dart';
import 'pagetwo.dart';
import 'pagethree.dart';
import 'package:get/get.dart';
class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
   appBar: AppBar(title: const Text("page 1")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                Get.off(PageTwo());
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