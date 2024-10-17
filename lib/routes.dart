import 'package:ecommece/core/constant/routes.dart';
 import 'package:ecommece/view/screen/auth/forgetpassword/forget_password.dart';
import 'package:ecommece/view/screen/auth/login.dart';
import 'package:ecommece/view/screen/auth/forgetpassword/reset_password.dart';
import 'package:ecommece/view/screen/auth/signup.dart';
import 'package:ecommece/view/screen/auth/forgetpassword/success_reset_password.dart';
import 'package:ecommece/view/screen/auth/success_signup.dart';
import 'package:ecommece/view/screen/auth/forgetpassword/verify_code.dart';
import 'package:ecommece/view/screen/auth/verify_code_sign_up.dart';
import 'package:ecommece/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //auth
  AppRoute.login: (context) => Login(),
  AppRoute.signup: (context) => SignUp(),
  AppRoute.forgetPassword: (context) => ForgetPassword(),
  AppRoute.verifyCode: (context) => VerifyCode(),
  AppRoute.resetPassword: (context) => ResetPassword(),
  AppRoute.successResetPassword: (context) => SuccessResetPassword(),
  AppRoute.successSignUp: (context) => SuccessSignUp(),
   AppRoute.verifyCodeSignUp: (context) => VerifyCodeSignUp(),
  //onboarding
  AppRoute.onBoarding: (context) => OnBoarding(),
};
