import 'package:get/get.dart';

class ProfileController extends GetxController {
  final List<Map<String, dynamic>> accountFeaturesList = [
    {
      'icon': 'assets/icon/history.png',
      'label': 'Check History Order',
    },
    {
      'icon': 'assets/icon/dompet.png',
      'label': 'Payment',
    },
    {
      'icon': 'assets/icon/Voucher.png',
      'label': 'My Voucher’s',
    },
    {
      'icon': 'assets/icon/IMP.png',
      'label': 'Input Promo’s Code',
    },
    {
      'icon': 'assets/icon/Notip.png',
      'label': 'Notifications',
    },
    {
      'icon': 'assets/icon/ask.png',
      'label': 'Frequently Asked Questions',
    },
  ];
}
