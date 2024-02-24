import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:flutter/material.dart';

class TextFormFielWidget extends StatelessWidget {
  const TextFormFielWidget({
    super.key,
    required this.label,
    required this.hintText,
  });

  final String label;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: ConstantTextStyle.stylePoppins(
            fontSize: 10,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 13,
        ),
        TextFormField(
          style: ConstantTextStyle.stylePoppins(
            color: whiteColor,
          ),
          decoration: InputDecoration(
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
      ],
    );
  }
}
