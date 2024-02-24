import 'dart:developer';

import 'package:app_foodorder/constant/constant_firebase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AutController extends GetxController {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  CollectionReference userCollection =
      FirebaseCollectionConstant.getUserCollection();

  final RxBool _isObsecure = false.obs;
  RxBool get isObsecure => _isObsecure;

  Future<void> signUpUser() async {
    try {
      userCollection.add({});
    } catch (e, st) {
      log('Error From SignUp $e, Stack Trace: $st');
      Get.showSnackbar(GetSnackBar(
        title: 'Something Went Wrong',
        message: 'Sorry $e',
      ));
    }
  }

  void changeIsObsecure() {
    _isObsecure.value = !_isObsecure.value;
  }
}
