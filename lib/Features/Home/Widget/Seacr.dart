import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: ConstantTextStyle.stylePoppins(
                fontSize: 15, fontWeight: FontWeight.w300, color: greyColor),
            suffixIcon: const Icon(
              Icons.search,
              size: 24,
              color: greyColor,
            ),
            filled: true,
            fillColor: const Color(0x0ff5758c),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: const BorderSide(
                  color: Color(0x0ff5758c),
                ))),
      ),
    );
  }
}
