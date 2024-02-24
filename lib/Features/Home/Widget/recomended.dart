import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:flutter/material.dart';

class CardRecomended extends StatelessWidget {
  const CardRecomended({
    super.key,
    required this.label,
    required this.rating,
    required this.price,
    required this.tags,
    required this.imageUrl,
  });

  final String label;
  final String rating;
  final String imageUrl;
  final String price;
  final String tags;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 168,
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(24)),
      child: Row(
        children: [
          Container(
            height: 140,
            width: 115,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: whiteColor),
              image: DecorationImage(
                  image: AssetImage(imageUrl), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: ConstantTextStyle.stylePoppins(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  tags,
                  style: ConstantTextStyle.stylePoppins(
                    fontWeight: FontWeight.w300,
                    color: cardColor,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
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
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Rp $price',
                  style: ConstantTextStyle.stylePoppins(
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: greenColor),
              child: const Center(
                child: Icon(
                  Icons.add,
                  size: 16,
                  color: whiteColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
