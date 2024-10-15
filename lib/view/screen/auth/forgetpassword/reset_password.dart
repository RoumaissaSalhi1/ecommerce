import 'package:ecommece/controller/auth/reset_password_controller.dart';
import 'package:ecommece/view/widget/auth/custombuttonauth.dart';
import 'package:ecommece/view/widget/auth/customheadertext.dart';
import 'package:ecommece/view/widget/auth/customheadertitle.dart';
import 'package:ecommece/view/widget/auth/customtextformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordController controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reset Password',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding:
            const EdgeInsets.only(top: 32, right: 24, left: 24, bottom: 24),
        child: ListView(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomHeaderTitle(
              title: 'New Password',
            ),
            const SizedBox(height: 16),
            const CustomHeaderText(
              text: 'Please Enter New Password',
            ),
            const SizedBox(height: 64),
            CustomTextFormField(
              hintText: 'Enter Your New Password',
              labelText: 'New Password',
              suffixIcon: Icons.key_outlined,
              fieldController: controller.newPassword,
            ),
            const SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'Re-Enter Your New Password',
              labelText: 'New Password',
              suffixIcon: Icons.key_outlined,
              fieldController: controller.rePassword,
            ),
            const SizedBox(height: 24),
            Custombuttonauth(
              buttonText: 'Save',
              onPressed: () {
                controller.goToSuccessResetPassword();
              },
            ),
          ],
        ),
      ),
    );
  }
}
