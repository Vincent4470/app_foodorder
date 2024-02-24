// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_foodorder/Features/Favorite/Controller/favorite_controller.dart';
import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  const GridCard({
    Key? key,
    required this.imageUrl,
    required this.restoName,
    required this.menuTitle,
    required this.isFavorite,
    required this.price,
    required this.rating,
    required this.address,
    required this.index,
    required this.favoriteController,
  }) : super(key: key);

  final String imageUrl;
  final String restoName;
  final String menuTitle;
  final bool isFavorite;
  final String price;
  final String rating;
  final String address;
  final int index;
  final FavoriteController favoriteController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          18,
        ),
        color: cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    imageUrl,
                    width: 150,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 11, vertical: 3),
                    width: 75,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: tealColor),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 25,
                          color: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          rating,
                          style: ConstantTextStyle.stylePoppins(
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            restoName,
            style: ConstantTextStyle.stylePoppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            menuTitle,
            style: ConstantTextStyle.stylePoppins(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            address,
            style: ConstantTextStyle.stylePoppins(
              color: greyColor,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            'Rp$price',
            style: ConstantTextStyle.stylePoppins(
              fontWeight: FontWeight.w300,
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () => favoriteController.addtoFav(index),
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_outline,
                size: 24,
                color: const Color(0xffFF0000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
