import 'package:ecommece/controller/auth/check_email_controller.dart';
import 'package:ecommece/controller/auth/forget_password_controller.dart';
import 'package:ecommece/view/widget/auth/custombuttonauth.dart';
import 'package:ecommece/view/widget/auth/customheadertext.dart';
import 'package:ecommece/view/widget/auth/customheadertitle.dart';
import 'package:ecommece/view/widget/auth/customtextformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailController controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Check Email',
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
              title: 'Success SignUp',
            ),
            const SizedBox(height: 16),
            const CustomHeaderText(
              text:
                  'Please Enter Your Email Address To Receive A Verification Code',
            ),
            const SizedBox(height: 64),
            CustomTextFormField(
              hintText: 'Enter Your Email',
              labelText: 'Email',
              suffixIcon: Icons.email_outlined,
              fieldController: controller.email,
            ),
            const SizedBox(height: 24),
            Custombuttonauth(
              buttonText: 'Check',
              onPressed: () {
                controller.goToSuccessSignUp();
              },
            ),
          ],
        ),
      ),
    );
  }
}
