import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controller/home_controller.dart';
 // adjust the path to your controller

class PageOnee extends StatelessWidget {
  const PageOnee({super.key});

  @override
  Widget build(BuildContext context) {
    // fenix when i want to go from page one to four so page one is not the last page i wannna go
   
     HomeController controller = Get.find();

    return Scaffold(
      appBar: AppBar(title: const Text("PageOnee")),
      body: Center(
        child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: (){
                    controller.subtraction();
                  },
                  icon: const Icon(Icons.remove),
                  color: Colors.red,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child:GetBuilder<HomeController>(builder: (controller)=>
                  Text("${controller.counter}"),
                  )
                ),
                IconButton(
                    onPressed: (){
                      controller.addition();
                    },
                  icon: const Icon(Icons.add),
                  color: Colors.green,
                ),
              ],
            )),
    );
  }
}
