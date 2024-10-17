import 'package:ecommece/controller/auth/success_reset_password_controller.dart';
import 'package:ecommece/core/constant/color.dart';
import 'package:ecommece/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordController controller =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Success!',
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(color: ColorApp.grey),
            ),
            const SizedBox(height: 32),
            Text(
              'Your password has been reset',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 64),
            const Icon(
              Icons.check_circle_outline,
              size: 150,
              color: ColorApp.primary,
            ),
            const SizedBox(height: 64),
            Container(
                width: 250,
                child: Custombuttonauth(
                    buttonText: 'Go To Login',
                    onPressed: () {
                      controller.goToLogin();
                    }))
          ],
        ),
      ),
    );
  }
}
