import 'package:ecommece/core/constant/routes.dart';
import 'package:ecommece/core/localization/changelocal.dart';
import 'package:ecommece/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocalController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "choose-language".tr,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.grey.shade700),
            ),
            const SizedBox(
              height: 24,
            ),
            CustomButtonLang(
              textButton: 'ar'.tr,
              onPressed: () {
                controller.changeLang('ar');
                Get.offNamed(AppRoute.onBoarding);
              },
            ),
            const SizedBox(
              height: 8,
            ),
            CustomButtonLang(
              textButton: 'en'.tr,
              onPressed: () {
                controller.changeLang('en');
                Get.offNamed(AppRoute.onBoarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
