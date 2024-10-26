import 'package:ecommece/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  changeLang(String langCode) {
    Locale locale = Locale(langCode);

    myServices.sharedPreferences.setString('lang', langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    if (myServices.sharedPreferences.getInt('step') == null) {
      myServices.sharedPreferences.setInt('step', 0);
    }

    String? sharedPrefLang = myServices.sharedPreferences.getString('lang');
    if (sharedPrefLang == 'ar') {
      language = const Locale('ar');
    } else if (sharedPrefLang == 'ar') {
      language = const Locale('en');
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
