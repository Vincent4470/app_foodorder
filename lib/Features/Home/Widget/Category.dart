import 'package:app_foodorder/Features/Home/controller/Home_Controller.dart';
import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.homeController});

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 26,
      ),
      height: 74,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: homeController.categoryList.length,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  homeController.categoryList[index]['imageUrl']!,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                homeController.categoryList[index]['label']!,
                style: ConstantTextStyle.stylePoppins(
                  fontWeight: FontWeight.w500,
                  color: greenColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
