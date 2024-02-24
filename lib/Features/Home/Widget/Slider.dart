import 'package:app_foodorder/Features/Home/Widget/CardSlider.dart';
import 'package:app_foodorder/Features/Home/controller/Home_Controller.dart';
import 'package:app_foodorder/constant/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class CarouselSlider extends StatelessWidget {
  const CarouselSlider({super.key,required this.homeController});

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 218,
          child: PageView.builder(
            onPageChanged: (value) => homeController.changeIndex(value),
            controller: homeController.pageController,
            itemCount: homeController.cardList.length,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: CardSlider(
                imageUrl: homeController.cardList[index]['imageUrl'],
                contentWidget: homeController.cardList[index]['contentWidget'],
                isCenter: homeController.cardList[index]['isCenter'],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.only(left: 38),
          alignment: Alignment.topLeft,
          child: Wrap(
            spacing: 8,
            children: List.generate(
              homeController.cardList.length,
              (index) => Obx(
                () => Container(
                  width: 45,
                  height: 5,
                  color: homeController.indexSlider.value == index
                      ? greenColor
                      : greyColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
