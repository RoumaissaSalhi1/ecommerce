import 'package:ecommece/core/constant/routes.dart';
import 'package:ecommece/core/services/services.dart';
import 'package:get/get.dart';

abstract class SettingsController extends GetxController {
  MyServices myServices = Get.find();

  switchNotifications() {}
  logout() {}
}

class SettingsControllerImp extends SettingsController {
  @override
  logout() {
    myServices.sharedPreferences.clear();
    Get.offAllNamed(AppRoute.login);
  }
}
