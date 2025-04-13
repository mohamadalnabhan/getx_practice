import 'package:flutter/material.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_practice/controller/home_controller.dart';

class Mybindings implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }

}