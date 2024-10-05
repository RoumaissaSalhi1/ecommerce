import 'package:ecommece/core/constant/routes.dart';
import 'package:ecommece/view/screen/auth/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => Login(),
};
