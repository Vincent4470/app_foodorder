import 'package:app_foodorder/Features/controller/auth_controller.dart';
import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFormFielPassword extends StatelessWidget {
   TextFormFielPassword({
    super.key,
    required this.label,
    required this.hintText,
    required this.isPassword,
  });

  final String label;
  final String hintText;
  final bool? isPassword;

  final authC = Get.put(AutController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: ConstantTextStyle.stylePoppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 13,
        ),
        Obx(
          () => TextFormField(
            obscureText: authC.isObsecure.isTrue && isPassword != null,
            style: ConstantTextStyle.stylePoppins(
              color: whiteColor,
            ),
            decoration: InputDecoration(
              suffixIcon: isPassword != null
                  ? IconButton(
                    onPressed: () => authC.changeIsObsecure(),
                      icon: Icon(
                        authC.isObsecure.isTrue ? Icons.visibility_off 
                        :Icons.visibility,
                        color: Colors.white,
                      ),
                    )
                  : const SizedBox(),
              hintText: hintText,
              hintStyle: ConstantTextStyle.stylePoppins(
                color: greyColor,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: tealColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: tealColor,
                ),
              ),
            ),
          ),
        )
        
      ],
    );
  }
}
