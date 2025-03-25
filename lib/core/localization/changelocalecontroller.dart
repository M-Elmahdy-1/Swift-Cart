import 'dart:developer';

import 'package:ecommerceapp/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  String? sharePrefLanguage;

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(locale);
  }

  changeLangOnPress() {
    if (language?.languageCode == 'en') {
      changeLang('ar');
    } else {
      changeLang('en');
    }
    language = Get.locale;
    log("${language?.languageCode}");
  }

  @override
  void onInit() {
    String? sharePrefLanguage = myServices.sharedPreferences.getString("lang");
    if (sharePrefLanguage == "ar") {
      language = Locale("ar");
    } else if (sharePrefLanguage == "en") {
      language = Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
