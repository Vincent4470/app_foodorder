import 'package:app_foodorder/Features/models/OnlyForYou_Models.dart';
import 'package:get/get.dart';

class PromoController extends GetxController {
  final List<OnlyForYouModel> onlyForYouList = [
    OnlyForYouModel(
      restoName: 'Ramen Ngab',
      menuTitle: 'Ramen Teriyaki',
      address: 'Jl. Nusa Indah IV No.2, Tangerang',
      isDiscount: true,
      discount: '40',
      imageUrl: 'assets/images/onlyforyou_1.png',
      rating: '4.7',
    ),
    OnlyForYouModel(
      restoName: 'haffe',
      menuTitle: 'Cappucino',
      address: 'Socrate, Citra-Raya',
      isDiscount: false,
      discount: '0',
      imageUrl: 'assets/images/onlyforyou_2.png',
      rating: '4.3',
    ),
  ];

  final List<OnlyForYouModel> blackfridayList = [
    OnlyForYouModel(
      restoName: 'Chicken Prek',
      menuTitle: 'Chciken Licious',
      address: 'Jl. Nusa Indah Cempaka IV No.2, Tangerang',
      isDiscount: true,
      discount: '40',
      imageUrl: 'assets/images/bf_1.png',
      rating: '4.7',
    ),
    OnlyForYouModel(
      restoName: 'My Steak',
      menuTitle: 'Steak With Cheese Sa..',
      address: 'Socrate, Citra-Raya Kebun Jeruk',
      isDiscount: true,
      discount: '32',
      imageUrl: 'assets/images/bf_2.png',
      rating: '4.3',
    ),
  ];
}
