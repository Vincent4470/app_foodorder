import 'package:app_foodorder/Features/Home/Widget/Header_Widget.dart';
import 'package:app_foodorder/Features/Profile/Controller/Profile_Controller.dart';
import 'package:app_foodorder/Features/Profile/widget/Account.dart';
import 'package:app_foodorder/Features/Profile/widget/SaldoCard_widget.dart';
import 'package:app_foodorder/constant/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final ProfileController profileController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColors,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const HeaderWidget(),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: [
                      Account(profileController: profileController),
                      const SaldoCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
