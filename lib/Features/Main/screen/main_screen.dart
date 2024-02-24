import 'package:app_foodorder/Features/Main/controller/main_controller.dart';
import 'package:app_foodorder/constant/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final MainController mainC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColors,
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: mainC.indexBottomNavbar.value,
          onTap: (value) => mainC.changeIndex(value),
          type: BottomNavigationBarType.fixed,
          backgroundColor: cardColor,
          items: mainC.listBottomNav,
        ),
      ),
      body: Obx(() => mainC.bodyMain[mainC.indexBottomNavbar.value],),
    );
  }
}
