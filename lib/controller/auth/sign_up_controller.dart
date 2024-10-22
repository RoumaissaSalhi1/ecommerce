import 'package:ecommece/core/class/status_request.dart';
import 'package:ecommece/core/constant/routes.dart';
import 'package:ecommece/core/functions/handling_data.dart';
import 'package:ecommece/data/datasource/remote/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  StatusRequest? statusRequest;

  List data = [];

  SignUpRemoteData signUpRemoteData = SignUpRemoteData(Get.find());

  signUp();
  goToLogin();
}

class SignUpControllerImp extends SignUpController {
  @override
  signUp() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();

      var response = await signUpRemoteData.postData(
        userName.text,
        email.text,
        phone.text,
        password.text,
      );

      print('----------------controller $response');

      statusRequest = handlingData(response);

      if (statusRequest == StatusRequest.succes) {
        if (response['status'] == 'success') {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.verifyCodeSignUp,
              arguments: {'email': email.text});
        } else {
          Get.defaultDialog(
              title: 'Warning',
              middleText: 'Phone number or Email already exists');
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    userName = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    userName.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
