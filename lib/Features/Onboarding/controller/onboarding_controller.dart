import 'package:app_foodorder/Service/service_location.dart';
import 'package:app_foodorder/route/route_name.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final imagesOnboarding = [
    'assets/images/Onboarding_1.png',
    'assets/images/Onboarding_2.png',
    'assets/images/Onboarding_3.png',
  ];

  RxInt indexImage = 0.obs;

  void handleGetStarted() async {
    final location = await LocationService.getCurrentPosision();
    if (location == null) return;

    Get.offAllNamed(RouteName.signUpScreen);
  }
}
