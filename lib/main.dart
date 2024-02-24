import 'package:app_foodorder/route/route_name.dart';
import 'package:app_foodorder/route/route_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: RoutePage().routes,
      initialRoute: RouteName.onboardingScreen,
    );
  }
}
