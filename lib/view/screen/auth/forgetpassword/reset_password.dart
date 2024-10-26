import 'package:ecommece/controller/auth/reset_password_controller.dart';
import 'package:ecommece/core/class/handling_data_view.dart';
import 'package:ecommece/core/class/status_request.dart';
import 'package:ecommece/core/constant/imageasset.dart';
import 'package:ecommece/view/widget/auth/custombuttonauth.dart';
import 'package:ecommece/view/widget/auth/customheadertext.dart';
import 'package:ecommece/view/widget/auth/customheadertitle.dart';
import 'package:ecommece/view/widget/auth/customtextformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reset Password',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: GetBuilder<ResetPasswordControllerImp>(builder: (controller) {
        return HandlingDataRequest(
          statusRequest: controller.statusRequest,
          widget: Container(
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
                  validator: (val) {},
                  hintText: 'Enter Your New Password',
                  labelText: 'New Password',
                  suffixIcon: Icons.key_outlined,
                  fieldController: controller.newPassword,
                  textInputType: TextInputType.visiblePassword,
                ),
                const SizedBox(height: 24),
                CustomTextFormField(
                  validator: (val) {},
                  hintText: 'Re-Enter Your New Password',
                  labelText: 'New Password',
                  suffixIcon: Icons.key_outlined,
                  fieldController: controller.rePassword,
                  textInputType: TextInputType.visiblePassword,
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
      }),
    );
  }
}
