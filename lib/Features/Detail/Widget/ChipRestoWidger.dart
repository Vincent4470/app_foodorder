import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:flutter/material.dart';

class ChipRestoWidget extends StatelessWidget {
  const ChipRestoWidget({
    super.key,
    required this.imageUrl,
    required this.label,
  });

  final String imageUrl;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(
        vertical: 13,
        horizontal: 25,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: tealColor),
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            label,
            style: ConstantTextStyle.stylePoppins(
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
