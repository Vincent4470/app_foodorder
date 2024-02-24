import 'package:app_foodorder/Features/Profile/Controller/Profile_Controller.dart';
import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class Account extends StatelessWidget {
  const Account({
    super.key,
    required this.profileController,
  });

  final ProfileController profileController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 70,
      child: GlassContainer.clearGlass(
        height: 450,
        width: 400,
        gradient: LinearGradient(
          colors: [
            const Color(0xfff435055).withOpacity(0.7),
            const Color(0xff9A9B9C).withOpacity(0.10)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(18),
        blur: 15.0,
        borderWidth: 0.0,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              'Your Account',
              style: ConstantTextStyle.stylePoppins(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: profileController.accountFeaturesList.length,
                itemBuilder: (context, index) {
                  final data = profileController.accountFeaturesList[index];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            data['icon'],
                            width: 24,
                            height: 24,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            data['label'],
                            style: ConstantTextStyle.stylePoppins(),
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chevron_right,
                          size: 24,
                          color: whiteColor,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
