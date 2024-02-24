import 'package:app_foodorder/constant/constant_color.dart'; // Pastikan whiteColor didefinisikan di sini
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConstantTextStyle {
  static TextStyle stylePoppins({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? height,
    TextDecoration? textDecoration,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? whiteColor,
      height: height ?? 1,
      decoration: textDecoration,
    );
  }
}
