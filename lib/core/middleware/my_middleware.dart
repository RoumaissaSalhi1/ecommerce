import 'package:ecommece/core/constant/routes.dart';
import 'package:ecommece/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    //! Priorities ranked by importance
    if (myServices.sharedPreferences.getInt('step') == 2) {
      return RouteSettings(name: AppRoute.home);
    }

    if (myServices.sharedPreferences.getInt('step') == 1) {
      return RouteSettings(name: AppRoute.login);
    }
  }
}
