import 'package:ecommece/controller/auth/verify_code_controller.dart';
import 'package:ecommece/core/constant/color.dart';
import 'package:ecommece/view/widget/auth/customheadertext.dart';
import 'package:ecommece/view/widget/auth/customheadertitle.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeController controller = Get.put(VerifyCodeControllerImp());
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
            CustomHeaderText(
              text: 'Please Enter The Digit Code Sent To ${controller.email}',
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
                controller.goToResetPassword();
              }, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}
