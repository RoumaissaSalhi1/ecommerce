import 'package:ecommece/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToLogin();
}

class SignUpControllerImp extends SignUpController {
  @override
  signUp() {}

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }
}
