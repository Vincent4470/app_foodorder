import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CostumeButtonWidget extends StatelessWidget {
  CostumeButtonWidget({
    super.key,
    required this.label,
    this.isfullButton = false,
    this.width = 200,
    this.height = 60,
    this.onPressed,
  });

  final String label;
  final bool isfullButton;
  final double width;
  final double height;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(
            vertical: 9,
            horizontal: 18,
          )),
          backgroundColor: const MaterialStatePropertyAll(tealColor),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          minimumSize: MaterialStatePropertyAll(
            Size(isfullButton ? Get.size.width : width, height),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: ConstantTextStyle.stylePoppins(
              fontSize: 20, fontWeight: FontWeight.bold),
        ));
  }
}
