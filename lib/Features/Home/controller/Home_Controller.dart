import 'package:app_foodorder/Features/models/recomend_models.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  PageController? pageController;
  final RxInt _indexSlider = 0.obs;
  RxInt get indexSlider => _indexSlider;

  void changeIndex(int value) {
    _indexSlider.value = value;
  }

  final List<Map<String, dynamic>> cardList = [
    {
      'imageUrl': 'assets/images/eskrim.png',
      'contentWidget': Column(
        children: [
          Text(
            'Icelicious',
            style: ConstantTextStyle.stylePoppins(
                fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Only For You',
            style: ConstantTextStyle.stylePoppins(
                fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Discont Up To',
            style: ConstantTextStyle.stylePoppins(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '75%',
            style: ConstantTextStyle.stylePoppins(
                fontSize: 48, fontWeight: FontWeight.w500),
          ),
        ],
      ),
      'isCenter': false
    },
    {
      'imageUrl': 'assets/images/piza.png',
      'isCenter': true,
      'contentWidget': Column(
        children: [
          Text(
            'Icelicious 2',
            style: ConstantTextStyle.stylePoppins(
                fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Only For You',
            style: ConstantTextStyle.stylePoppins(
                fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Discont Up To',
            style: ConstantTextStyle.stylePoppins(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '75%',
            style: ConstantTextStyle.stylePoppins(
                fontSize: 48, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    }
  ];

  final categoryList = [
    {
      'imageUrl': 'assets/icon/Hamburger.png',
      'label': 'Burgers',
    },
    {
      'imageUrl': 'assets/icon/Spaghetti.png',
      'label': 'Spaghetti',
    },
    {
      'imageUrl': 'assets/icon/Iced Coffee.png',
      'label': 'Coffe',
    },
    {
      'imageUrl': 'assets/icon/Milkshake.png',
      'label': 'Milshake',
    },
    {
      'imageUrl': 'assets/icon/Pizza.png',
      'label': 'Piza',
    },
  ];

  final List<ProductModel> favoriteList = [
    ProductModel(
      imageUrl: 'assets/images/burger.png',
      label: 'Cheese Burger',
      price: '28000',
      rating: '4.7',
      tags: '',
    ),
    ProductModel(
      imageUrl: 'assets/images/Kopi.png',
      label: 'kopi cappucino',
      price: '30000',
      rating: '4.6',
      tags: '',
    )
  ];


  final List<ProductModel> recommendList = [
    ProductModel(
        label: 'Spaghetti with Bebaque sauce',
        rating: '4,7',
        price: '30000',
        tags: 'Spaghetti, Egg',
        imageUrl: 'assets/images/rekomen_1.png'),
    ProductModel(
        label: 'Beef Pizza  with mushroom',
        rating: '4,1',
        price: '132000',
        tags: 'Beef Mushroom',
        imageUrl: 'assets/images/rekomen_2.png'),
  ];

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(
      viewportFraction: 0.8,
    );
  }
}
