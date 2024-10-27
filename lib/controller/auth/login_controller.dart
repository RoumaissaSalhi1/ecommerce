import 'package:ecommece/core/class/status_request.dart';
import 'package:ecommece/core/constant/routes.dart';
import 'package:ecommece/core/functions/handling_data.dart';
import 'package:ecommece/core/services/services.dart';
import 'package:ecommece/data/datasource/remote/auth/login_remote_data.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isShowPassword = true;

  MyServices myServices = Get.find();

  StatusRequest statusRequest = StatusRequest.none;

 
  LoginRemoteData loginRemoteData = LoginRemoteData(Get.find());

  login();
  goToSignUp();
  goToForgetPassword();
  showPassword();
}

class LoginControllerImp extends LoginController {
  @override
  showPassword() {
    isShowPassword = !isShowPassword;
    update();
  }

  @override
  login() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();

      var response = await loginRemoteData.postData(
        email.text,
        password.text,
      );

      print('----------------controller $response');

      statusRequest = handlingData(response);

      if (statusRequest == StatusRequest.succes) {
        if (response['status'] == 'success') {
          //  data.addAll(response['data']);
          myServices.sharedPreferences.setString("id", response['data']['id']);
          myServices.sharedPreferences
              .setString('username', response['data']['username']);
          myServices.sharedPreferences
              .setString('email', response['data']['email']);
          myServices.sharedPreferences
              .setString('phone', response['data']['phone']);
          myServices.sharedPreferences.setInt('step', 2);

          Get.offNamed(AppRoute.home);
        } else {
          Get.defaultDialog(
              title: 'Warning', middleText: 'Phone number or Email incorrect');
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);
  }

  @override
  goToForgetPassword() {
    Get.offNamed(AppRoute.forgetPassword);
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      print(value);
      String? token = value;
    });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
