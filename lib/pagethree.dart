import 'package:flutter/material.dart';
import 'pageone.dart';
import 'pagetwo.dart';
import 'package:get/get.dart';
class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
   appBar: AppBar(title: const Text("page 3")),
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