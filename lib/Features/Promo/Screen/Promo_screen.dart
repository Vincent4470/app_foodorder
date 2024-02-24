import 'package:app_foodorder/Features/Promo/Controller/promoController.dart';
import 'package:app_foodorder/Features/Promo/widget/OnlyForYou_widget.dart';
import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoScreen extends StatelessWidget {
  PromoScreen({super.key});

  final PromoController promoController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColors,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'There is Many Promo\nFor You!',
                        style: ConstantTextStyle.stylePoppins(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 3,
                        width: 100,
                        color: tealColor,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 27,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(13),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: promoColor, width: 2),
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/images/FoodPromo.png',
                                fit: BoxFit.cover,
                                width: 75,
                                height: 75,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Food',
                            style: ConstantTextStyle.stylePoppins(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(13),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: promoColor, width: 2),
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/images/DrinkPromo.png',
                                fit: BoxFit.cover,
                                width: 75,
                                height: 75,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Drink',
                            style: ConstantTextStyle.stylePoppins(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Only For You',
                            style: ConstantTextStyle.stylePoppins(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                'See All',
                                style: ConstantTextStyle.stylePoppins(
                                  fontWeight: FontWeight.w600,
                                  color: tealColor,
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Icon(
                                Icons.chevron_right,
                                size: 24,
                                color: tealColor,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: promoController.onlyForYouList.length,
                          itemBuilder: (context, index) {
                            final data = promoController.onlyForYouList[index];
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: OnlyForYouCard(
                                address: data.address,
                                discount: data.discount,
                                imageUrl: data.imageUrl,
                                isDiscount: data.isDiscount,
                                rating: data.rating,
                                restoName: data.restoName,
                                menuTitle: data.menuTitle,
                              ),
                            );
                          }),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Black Friday',
                            style: ConstantTextStyle.stylePoppins(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                'See All',
                                style: ConstantTextStyle.stylePoppins(
                                  fontWeight: FontWeight.w600,
                                  color: tealColor,
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Icon(
                                Icons.chevron_right,
                                size: 24,
                                color: tealColor,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: promoController.blackfridayList.length,
                          itemBuilder: (context, index) {
                            final data = promoController.blackfridayList[index];
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: OnlyForYouCard(
                                address: data.address,
                                discount: data.discount,
                                imageUrl: data.imageUrl,
                                isDiscount: data.isDiscount,
                                rating: data.rating,
                                restoName: data.restoName,
                                menuTitle: data.menuTitle,
                              ),
                            );
                          }),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
