import 'package:ecommece/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  late String code;
  late String email;
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword, arguments: {'email': email});
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
