import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tealColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              height: 250,
              child: Image.asset("assets/images/SplashScreen.png",
                  fit: BoxFit.cover),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Foodies',
              style: ConstantTextStyle.stylePoppins(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
              )
          ],
        ),
      ),
    );
  }
}
