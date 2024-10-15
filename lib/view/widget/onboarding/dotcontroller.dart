import 'package:ecommece/controller/onboarding_controller.dart';
import 'package:ecommece/core/constant/color.dart';
import 'package:ecommece/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DotControllerOnBoarding extends StatelessWidget {
  const DotControllerOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  OnBoardingList.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: controller.currentPage == index ? 20 : 6,
                    height: 6,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      color: ColorApp.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ));
  }
}
