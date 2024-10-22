import 'package:ecommece/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  late String code;
  String? email;
  checkCode();
  goToSuccessSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
  }

  @override
  checkCode() {}

  @override
  void onInit() {
    code = '';
    email = Get.arguments['email'];
    super.onInit();
  }
}
