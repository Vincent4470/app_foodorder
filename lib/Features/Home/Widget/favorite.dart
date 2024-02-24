import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:flutter/material.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard(
      {super.key,
      required this.label,
      required this.imageurl,
      required this.price,
      required this.rating});

  final String label;
  final String imageurl;
  final String price;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 150,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                      image: AssetImage(imageurl), fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 2,
                ),
                Text(
                  label,
                  style: ConstantTextStyle.stylePoppins(
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.yellow,
                        ),
                        Text(
                          rating,
                          style: ConstantTextStyle.stylePoppins(),
                        )
                      ],
                    ),
                    Text(
                      'Rp$price',
                      style: ConstantTextStyle.stylePoppins(
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
