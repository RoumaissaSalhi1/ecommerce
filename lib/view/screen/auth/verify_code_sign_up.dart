import 'package:ecommece/controller/auth/verify_code_sign_up_controller.dart';
import 'package:ecommece/core/constant/color.dart';
import 'package:ecommece/view/widget/auth/customheadertext.dart';
import 'package:ecommece/view/widget/auth/customheadertitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpController controller =
        Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Verify Code',
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
              title: 'Verify Code',
            ),
            const SizedBox(height: 16),
            const CustomHeaderText(
              text: 'Please Enter The Digit Code Sent To ro...5@gmail.com',
            ),
            const SizedBox(height: 64),
            OtpTextField(
              numberOfFields: 5,
              fieldWidth: 50,
              focusedBorderColor: ColorApp.primary50,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.goToSuccessSignUp();
              }, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}
