import 'package:ecommece/controller/onboarding_controller.dart';
import 'package:ecommece/core/constant/color.dart';
import 'package:ecommece/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnboardingControllerImp> {
  const CustomSliderOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        itemCount: OnBoardingList.length,
        itemBuilder: (context, i) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    OnBoardingList[i].title!,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  // const SizedBox(
                  //   height: 60,
                  // ),
                  Image.asset(
                    OnBoardingList[i].image!,
                    fit: BoxFit.fill,
                  ),
                  // const SizedBox(
                  //   height: 60,
                  // ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      OnBoardingList[i].body!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(height: 2, color: ColorApp.grey),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ));
  }
}
