import 'package:flutter/material.dart';
import 'pageone.dart';
import 'pagethree.dart';
import 'package:get/get.dart';
class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
   appBar: AppBar(title: const Text("page two")),
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
                Get.off(PageTwo());
              },
              color: Colors.green,
              textColor: Colors.white,
              child: const Text("page 2"),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                Get.offAll(PageThree());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text("page 3"),
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