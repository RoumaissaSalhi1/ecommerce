import 'package:ecommece/core/constant/routes.dart';
import 'package:ecommece/view/screen/auth/forgetpassword/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  late TextEditingController newPassword;
  late TextEditingController rePassword;
  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoute.successResetPassword);
  }

  @override
  resetPassword() {}

  @override
  void onInit() {
    newPassword = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    newPassword.dispose();
    rePassword.dispose();
    super.dispose();
  }
}
