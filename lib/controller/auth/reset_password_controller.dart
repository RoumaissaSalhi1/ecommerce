import 'package:ecommece/core/class/status_request.dart';
import 'package:ecommece/core/constant/routes.dart';
import 'package:ecommece/core/functions/handling_data.dart';
import 'package:ecommece/data/datasource/remote/auth/forgetpassword/reset_password_remote_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  late TextEditingController newPassword;
  late TextEditingController rePassword;
  late String email;

  StatusRequest statusRequest = StatusRequest.none;

  List data = [];

  ResetPasswordRemoteData loginRemoteData = ResetPasswordRemoteData(Get.find());

  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  @override
  goToSuccessResetPassword() async {
    if (newPassword.text == rePassword.text) {
      statusRequest = StatusRequest.loading;
      update();

      var response = await loginRemoteData.postData(
        email,
        rePassword.text,
      );

     // print('----------------controller $response');

      statusRequest = handlingData(response);

      if (statusRequest == StatusRequest.succes) {
        if (response['status'] == 'success') {
          Get.offNamed(AppRoute.successResetPassword);
        } else {
          Get.defaultDialog(title: 'Warning', middleText: 'Failure');
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      Get.defaultDialog(title: 'Warning', middleText: 'Passwords do not match');
      statusRequest = StatusRequest.failure;
    }
  }

  @override
  resetPassword() {}

  @override
  void onInit() {
    newPassword = TextEditingController();
    rePassword = TextEditingController();
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  void dispose() {
    newPassword.dispose();
    rePassword.dispose();
    super.dispose();
  }
}
