import 'package:app_foodorder/Features/Favorite/Controller/favorite_controller.dart';
import 'package:app_foodorder/Features/Main/controller/main_controller.dart';
import 'package:app_foodorder/Features/Profile/Controller/Profile_Controller.dart';
import 'package:app_foodorder/Features/Promo/Controller/promoController.dart';
import 'package:get/get.dart';

class Mainbinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileController());
    Get.put(PromoController());
    Get.put(FavoriteController());
    Get.put(MainController());
  }
}
