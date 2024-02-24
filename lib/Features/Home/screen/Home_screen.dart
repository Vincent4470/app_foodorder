import 'package:app_foodorder/Features/Home/Widget/Category.dart';
import 'package:app_foodorder/Features/Home/Widget/Header_Widget.dart';
import 'package:app_foodorder/Features/Home/Widget/Seacr.dart';
import 'package:app_foodorder/Features/Home/Widget/Slider.dart';
import 'package:app_foodorder/Features/Home/Widget/favorite.dart';
import 'package:app_foodorder/Features/Home/Widget/recomended.dart';
import 'package:app_foodorder/Features/Home/controller/Home_Controller.dart';
import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:app_foodorder/route/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColors,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWidget(),
              const SizedBox(height: 22),
              const SearchWidget(),
              const SizedBox(height: 10),
              CarouselSlider(
                homeController: _homeController,
              ),
              const SizedBox(height: 20),
              CategoryWidget(
                homeController: _homeController,
              ),
              const SizedBox(
                height: 20,
              ),
              // favorite
              Padding(
                padding: const EdgeInsets.only(
                  left: 36,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Favourite',
                      style: ConstantTextStyle.stylePoppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 155,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _homeController.favoriteList.length,
                          itemBuilder: (context, index) {
                            final data = _homeController.favoriteList[index];
                            return InkWell(
                              onTap: () {
                                final jsonEncode = data.toJson();
                                Get.toNamed(
                                  RouteName.detailScreen,
                                  arguments: {
                                    'data': jsonEncode,
                                  },
                                );
                              },
                              child: FavoriteCard(
                                imageurl: data.imageUrl,
                                label: data.label,
                                price: data.price,
                                rating: data.rating,
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rekomend',
                      style: ConstantTextStyle.stylePoppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: _homeController.recommendList.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final data = _homeController.recommendList[index];
                        return CardRecomended(
                          imageUrl: data.imageUrl,
                          label: data.label,
                          price: data.price,
                          rating: data.rating,
                          tags: data.tags,
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
