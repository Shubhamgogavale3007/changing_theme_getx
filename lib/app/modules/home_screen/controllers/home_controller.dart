import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  //TODO: Implement HomeController
  RxBool isThemesChange = false.obs;
  RxBool isSwitch = false.obs;
  RxString selectLanguage = 'English'.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  check(String locale) async {
    SharedPreferences sp = await prefs;

    sp.setString("Locale", locale);
  }
}
