import 'package:ecommece/core/services/services.dart';
import 'package:get/get.dart';
import 'package:strings/strings.dart';

translateDatabase(colAr, colEng) {
  MyServices myServices = Get.find();
  if (myServices.sharedPreferences.getString('lang') == 'ar') {
    return colAr;
  } else {
    return Strings.toCapitalised(colEng) ;
  }
}
