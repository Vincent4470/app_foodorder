import 'package:app_foodorder/Features/Detail/Screen/Detail_screen.dart';
import 'package:app_foodorder/Features/Detail/binding/Detail_Binding.dart';
import 'package:app_foodorder/Features/Main/binding/main_binding.dart';
import 'package:app_foodorder/Features/Main/screen/main_screen.dart';
import 'package:app_foodorder/Features/Onboarding/screen/Onboarding.dart';
import 'package:app_foodorder/Features/Order/screen/order_screen.dart';
import 'package:app_foodorder/Features/Sign%20In/screen/SignIn_scree.dart';
import 'package:app_foodorder/Features/Sign%20Up/screen/SignUp_Screen.dart';
// import 'package:app_foodorder/Features/Sign%20Up/screen/SignUp_scree.dart';
import 'package:app_foodorder/Features/Splash/Splash_screen.dart';
import 'package:app_foodorder/Features/models/recomend_models.dart';
import 'package:app_foodorder/route/route_name.dart';
import 'package:get/get.dart';

class RoutePage {
  List<GetPage<dynamic>> routes = [
    GetPage(
      name: RouteName.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RouteName.onboardingScreen,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: RouteName.signUpScreen,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: RouteName.signInScreen,
      page: () => const SignInScreen(),
    ),
    GetPage(
      name: RouteName.mainScreen,
      page: () => MainScreen(),
      binding: Mainbinding(),
    ),
    GetPage(
      name: RouteName.detailScreen,
      binding: DetailBinding(),
      page: () {
        ProductModel productData = ProductModel(
          imageUrl: '',
          label: '',
          price: '',
          rating: '',
          tags: '',
        );
        if (Get.arguments != null && Get.arguments is Map) {
          final Map<String, dynamic> args = Get.arguments;

          if (args.containsKey('data')) {
            productData = ProductModel.fromJson(args['data']);
          }
        }
        return DetailScreen(productModel: productData);
      },
    ),
    GetPage(
      name: RouteName.orderScreen,
      page: () {
        ProductModel productData = ProductModel(
          imageUrl: '',
          label: '',
          price: '',
          rating: '',
          tags: '',
        );
        int totalPrice = 0;
        int totalItem = 1;
        if (Get.arguments != null && Get.arguments is Map) {
          final Map<String, dynamic> args = Get.arguments;

          if (args.containsKey('data')) {
            productData = ProductModel.fromJson(args['data']);
          }

          if (args.containsKey('totalPrice')) {
            totalPrice = args['totalPrice'];
          }

          if (args.containsKey('totalItem')) {
            totalItem = args['totalItem'];
          }
        }
        return OrderScreen(
          productModel: productData,
          totalItem: totalItem,
          totalPrice: totalPrice,
        );
      },
    )
  ];
}
