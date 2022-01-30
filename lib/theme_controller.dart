import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  
RxBool isDark=false.obs;


void changeAppTheme(value){
  Get.changeTheme(
    value? ThemeData.dark():ThemeData.light()
  );
}
 
}