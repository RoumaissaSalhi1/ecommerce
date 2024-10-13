import 'package:ecommece/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
}

class LoginControllerImp extends LoginController {
  @override
  login() {}

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);
  }
}
