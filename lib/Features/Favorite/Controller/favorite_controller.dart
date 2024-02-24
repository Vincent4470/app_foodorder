import 'package:app_foodorder/Features/models/Favorite_Models.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController {
  final RxBool _isGrid = false.obs;
  RxBool get isGrid => _isGrid;

  void toggleIsGrid() {
    _isGrid.toggle();
  }

  void addtoFav(int index) {
    late String title;
    late String message;
    final favorite = favoriteList[index].copyWith(
      isFavorite: !favoriteList[index].isFavorite,
    );
    favoriteList[index] = favorite;
    if (favorite.isFavorite) {
      title = 'Success Add Item To Favorite';
      message = '${favorite.menuTitle} successfully add to your favorite';
    } else {
      title = 'Susscess Remove Item From Favorite';
      message = '${favorite.menuTitle} successfully remove to your favorite';
    }
    Get.showSnackbar(
      GetSnackBar(
        title: title,
        message: message,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  final RxList<RecommendModel> favoriteList = [
    RecommendModel(
      imageUrl: 'assets/images/ba_1.png',
      rating: '4,3',
      restoName: 'Hasta La Vista Cafe',
      menuTitle: 'Burger With French Fries',
      address: 'Jl. Raden Prabu Siliwangi, Tangerang',
      isFavorite: false,
      price: '54.000',
    ),
    RecommendModel(
      imageUrl: 'assets/images/ba_2.png',
      rating: '4,3',
      restoName: 'Cofeenary',
      menuTitle: 'Iced Coffe Milk',
      address: 'Jl. Cofeenary Citra- Raya, Tangerang',
      isFavorite: false,
      price: '18.000',
    ),
    RecommendModel(
      imageUrl: 'assets/images/ba_3.png',
      rating: '4,7',
      restoName: 'Boba Master',
      menuTitle: 'Boba Brown Sugar',
      address: 'Jl. Kentucky, Tangerang',
      isFavorite: false,
      price: '22.000',
    ),
    RecommendModel(
      imageUrl: 'assets/images/ba_4.png',
      rating: '4,1',
      restoName: 'Warung Mama John',
      menuTitle: 'Spaghetme',
      address: 'Jl. Steve Jobs, Tangerang',
      isFavorite: false,
      price: '27.000',
    ),
  ].obs;
}
