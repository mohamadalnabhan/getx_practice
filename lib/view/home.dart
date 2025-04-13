import "package:flutter/material.dart";
import "package:get/get_core/src/get_main.dart";
import 'package:get/get.dart';
import "package:getx_practice/controller/home_controller.dart";

import "package:getx_practice/previous_lessons/route_managment/pagetwo.dart";


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("home")),
  
    );
  }
}
