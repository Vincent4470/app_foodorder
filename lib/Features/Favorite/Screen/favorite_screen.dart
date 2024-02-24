import 'package:app_foodorder/Features/Favorite/Controller/favorite_controller.dart';
import 'package:app_foodorder/Features/Favorite/widget/Grid_card.dart';
import 'package:app_foodorder/Features/Favorite/widget/list_card.dart';
import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({super.key});

  final FavoriteController _favoriteController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColors,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 36,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Buy Again',
                        style: ConstantTextStyle.stylePoppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 90,
                        height: 3,
                        color: tealColor,
                      )
                    ],
                  ),
                  Obx(
                    () => IconButton(
                      onPressed: () => _favoriteController.toggleIsGrid(),
                      icon: Icon(
                        _favoriteController.isGrid.isFalse
                            ? Icons.grid_view
                            : Icons.list,
                        size: 32,
                        color: whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 31,
              ),
              Obx(
                () {
                  if (_favoriteController.isGrid.isTrue) {
                    return GridView.builder(
                      shrinkWrap: true,
                      itemCount: _favoriteController.favoriteList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 300,
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                      ),
                      itemBuilder: (context, index) {
                        final data = _favoriteController.favoriteList[index];
                        return GridCard(
                          imageUrl: data.imageUrl,
                          restoName: data.restoName,
                          menuTitle: data.menuTitle,
                          isFavorite: data.isFavorite,
                          price: data.price,
                          rating: data.rating,
                          address: data.address,
                          index: index,
                          favoriteController: _favoriteController,
                        );
                      },
                    );
                  }
                  return ListView.builder(
                    itemCount: _favoriteController.favoriteList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final data = _favoriteController.favoriteList[index];
                      return Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: ListCard(
                          imageUrl: data.imageUrl,
                          restoName: data.restoName,
                          menuTitle: data.menuTitle,
                          isFavorite: data.isFavorite,
                          price: data.price,
                          rating: data.rating,
                          address: data.address,
                          index: index,
                          favoriteController: _favoriteController,
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
