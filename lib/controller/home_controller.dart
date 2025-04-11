import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  int counter = 0 ;

  void addition(){
    counter++ ;
    update();
  }
  void subtraction(){
    counter-- ;
    update();
  }

  RxInt counter2 = 0.obs ;

  void addition2(){
    counter2++ ;
    update();
  }
  void subtraction2(){
    counter2-- ;
    update();
  }
}