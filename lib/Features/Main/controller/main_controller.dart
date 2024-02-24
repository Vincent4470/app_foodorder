import 'package:app_foodorder/Features/Favorite/Screen/favorite_screen.dart';
import 'package:app_foodorder/Features/Home/screen/Home_screen.dart';
import 'package:app_foodorder/Features/Profile/Screen/Profile_screen.dart';
import 'package:app_foodorder/Features/Promo/Screen/Promo_screen.dart';
import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final RxInt _indexBottomNavbar = 0.obs;
  RxInt get indexBottomNavbar => _indexBottomNavbar;

  void changeIndex(int val) {
    _indexBottomNavbar.value = val;
  }

  final List<BottomNavigationBarItem> listBottomNav = [
    // Home
    BottomNavigationBarItem(
      backgroundColor: cardColor,
      label: '',
      activeIcon: Container(
        margin: const EdgeInsets.only(top: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipOval(
              child: Container(
                width: 5,
                height: 5,
                color: whiteColor,
              ),
            ),
            const SizedBox(height: 10),
            Flexible(
              child: Text(
                'Home',
                style: ConstantTextStyle.stylePoppins(
                  color: whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
      icon: Container(
          margin: const EdgeInsets.only(top: 10),
          width: 28,
          height: 28,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icon/Home.png'),
            ),
          )),
    ),

// Promo
    BottomNavigationBarItem(
      backgroundColor: cardColor,
      label: '',
      activeIcon: Container(
        margin: const EdgeInsets.only(top: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipOval(
              child: Container(
                width: 5,
                height: 5,
                color: whiteColor,
              ),
            ),
            const SizedBox(height: 10),
            Flexible(
              child: Text(
                'Home',
                style: ConstantTextStyle.stylePoppins(
                  color: whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
      icon: Container(
          margin: const EdgeInsets.only(top: 10),
          width: 28,
          height: 28,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icon/ps_promo.png'),
            ),
          )),
    ),

    // favorite
    BottomNavigationBarItem(
      backgroundColor: cardColor,
      label: '',
      activeIcon: Container(
        margin: const EdgeInsets.only(top: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipOval(
              child: Container(
                width: 5,
                height: 5,
                color: whiteColor,
              ),
            ),
            const SizedBox(height: 10),
            Flexible(
              child: Text(
                'Home',
                style: ConstantTextStyle.stylePoppins(
                  color: whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
      icon: Container(
          margin: const EdgeInsets.only(top: 10),
          width: 28,
          height: 28,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icon/Heart.png'),
            ),
          )),
    ),

// Profile
    BottomNavigationBarItem(
      backgroundColor: cardColor,
      label: '',
      activeIcon: Container(
        margin: const EdgeInsets.only(top: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipOval(
              child: Container(
                width: 5,
                height: 5,
                color: whiteColor,
              ),
            ),
            const SizedBox(height: 10),
            Flexible(
              child: Text(
                'Home',
                style: ConstantTextStyle.stylePoppins(
                  color: whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
      icon: Container(
          margin: const EdgeInsets.only(top: 10),
          width: 28,
          height: 28,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icon/Profile.png'),
            ),
          )),
    ),
  ];

  final List<Widget> bodyMain = [
    HomeScreen(),
    PromoScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
}
