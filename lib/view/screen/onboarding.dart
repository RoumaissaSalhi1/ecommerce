import 'package:ecommece/controller/onboarding.controller.dart';
import 'package:ecommece/view/widget/onboarding/custombutton.dart';
import 'package:ecommece/view/widget/onboarding/customslider.dart';
import 'package:ecommece/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImp());
    return const Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: CustomSliderOnBoarding(),
          ),
          const Expanded(
              flex: 1,
              child: Column(
                children: [
                  DotControllerOnBoarding(),
                  const Spacer(),
                  CutomButtonOnBoarding(),
                  const SizedBox(
                    height: 32,
                  )
                ],
              )),
        ],
      ),
    ));
  }
}
