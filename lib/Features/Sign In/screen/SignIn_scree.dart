import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:app_foodorder/route/route_name.dart';
import 'package:app_foodorder/widgets/Costume_Button.dart';
import 'package:app_foodorder/widgets/Text_form_field.dart';
import 'package:app_foodorder/widgets/Text_form_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColors,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 36,
              vertical: 22,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find Your Favourite Menu’s.Start From Here!',
                  style: ConstantTextStyle.stylePoppins(
                      fontSize: 18, fontWeight: FontWeight.w600, height: 1.3),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 30,
                  width: Get.size.width,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          width: 81,
                          height: 15,
                          color: tealColor,
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        left: 2,
                        child: Text(
                          'Sign In',
                          style: ConstantTextStyle.stylePoppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const TextFormFielWidget(
                  hintText: 'Your Gmail',
                  label: 'Gmail',
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormFielPassword(
                  hintText: 'Your Password',
                  label: 'Password',
                  isPassword: true,
                ),
                const SizedBox(
                  height: 5,
                ),
                RichText(
                  text: TextSpan(
                    style: ConstantTextStyle.stylePoppins(
                      color: tealColor,
                    ),
                    children: [
                      const TextSpan(text: 'Haven’t an Account?'),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.toNamed(RouteName.signUpScreen);
                          },
                        text: 'Sign ',
                        style: ConstantTextStyle.stylePoppins(
                          color: tealColor,
                          fontWeight: FontWeight.w600,
                          textDecoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                CostumeButtonWidget(
                  label: 'Sign Up',
                  isfullButton: true,
                  onPressed: () => print('hellow from sign up'),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Terms and Condition',
                    style: ConstantTextStyle.stylePoppins(
                      fontWeight: FontWeight.w300,
                      color: greyColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
