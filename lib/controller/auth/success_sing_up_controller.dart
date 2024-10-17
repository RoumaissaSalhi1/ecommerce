import 'package:ecommece/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSingUpController extends GetxController {
  goToLogin();
}

class SuccessSingUpControllerImp extends SuccessSingUpController {
  @override
  goToLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
