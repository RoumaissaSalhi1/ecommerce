import 'package:ecommece/core/constant/routes.dart';
import 'package:ecommece/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnboardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnboardingControllerImp extends OnboardingController {
  late PageController pageController;
  int currentPage = 0;
  @override
  next() {
    currentPage++;
    if (currentPage > OnBoardingList.length - 1) {
      Get.offAllNamed(AppRoute.login);
      
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
