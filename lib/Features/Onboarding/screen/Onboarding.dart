import 'package:app_foodorder/Features/Onboarding/controller/onboarding_controller.dart';
import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/widgets/Costume_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingController = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) {
              onboardingController.indexImage.value = value;
            },
            itemCount: onboardingController.imagesOnboarding.length,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                color: tealColor,
                image: DecorationImage(
                  image:
                      AssetImage(onboardingController.imagesOnboarding[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 114,
            right: 114,
            child: Column(
              children: [
                CostumeButtonWidget(
                  label: 'Get Started',
                  onPressed: () => onboardingController.handleGetStarted(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 8,
                  children: List.generate(
                    onboardingController.imagesOnboarding.length,
                    (index) => Obx(
                      () => Container(
                        width: 45,
                        height: 5,
                        color: onboardingController.indexImage.value == index
                            ? whiteColor
                            : greenColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
