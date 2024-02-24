import 'package:app_foodorder/Features/Detail/Controller/detail_controler.dart';
import 'package:get/get.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DetailController());
  }
}
