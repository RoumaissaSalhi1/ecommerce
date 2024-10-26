import 'package:ecommece/core/class/status_request.dart';
import 'package:ecommece/core/constant/routes.dart';
import 'package:ecommece/core/functions/handling_data.dart';
import 'package:ecommece/data/datasource/remote/auth/forgetpassword/check_email_remote_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;

  StatusRequest statusRequest = StatusRequest.none;

  List data = [];

  CheckEmailRemoteData checkEmailRemoteData = CheckEmailRemoteData(Get.find());

  checkEmail();
  goToVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  @override
  goToVerifyCode() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();

      var response = await checkEmailRemoteData.postData(email.text);

      print('----------------controller $response');

      statusRequest = handlingData(response);

      if (statusRequest == StatusRequest.succes) {
        if (response['status'] == 'success') {
          Get.offNamed(AppRoute.verifyCode, arguments: {'email': email.text});
        } else {
          Get.defaultDialog(
              title: 'Warning', middleText: 'Email does not exist');
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

  @override
  checkEmail() {}

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
