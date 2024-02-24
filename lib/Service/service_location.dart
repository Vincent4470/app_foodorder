import 'dart:developer';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class LocationService {
  static Future<bool> _isServiceEnabled() async {
    LocationPermission permission;
    try {
      final isServiceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!isServiceEnabled) {
        Get.showSnackbar(const GetSnackBar(
          title: 'Location Service Unenabled',
          message: 'Location Service unenabled by user',
          duration: Duration(seconds: 3),
        ));
        return false;
      }

      permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          Get.showSnackbar(const GetSnackBar(
            title: 'Permission Required',
            message: 'Location permission is required to use this app',
            duration: Duration(seconds: 3),
          ));
          return false;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        Get.showSnackbar(const GetSnackBar(
          title: 'Permission Required',
          message: 'Location permission is required to use this app',
          duration: Duration(seconds: 3),
        ));
        return false;
      }

      return true;
    } catch (e) {
      log('Error From Is Service Enabled $e');
      return false;
    }
  }

  static Future<Position?> getCurrentPosision() async {
    try {
      if (!await _isServiceEnabled()) return null;

      return await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
    } catch (e) {
      log('Error From Get Current Posision $e');
      return null;
    }
  }
}
