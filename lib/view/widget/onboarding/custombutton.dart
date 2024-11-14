import 'package:ecommece/controller/onboarding_controller.dart';
import 'package:ecommece/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CutomButtonOnBoarding extends GetView<OnboardingControllerImp> {
  const CutomButtonOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 48,
      child: FilledButton(
        onPressed: () {
          controller.next();
        },
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(ColorApp.primary),
        ),
        child: const Text('Continue'),
      ),
    );
  }
}
