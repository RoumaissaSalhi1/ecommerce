import 'package:ecommece/controller/auth/sign_up_controller.dart';
import 'package:ecommece/view/widget/auth/custom_sign_up_or_sign_in.dart';
import 'package:ecommece/view/widget/auth/custombuttonauth.dart';
import 'package:ecommece/view/widget/auth/customheadertext.dart';
import 'package:ecommece/view/widget/auth/customheadertitle.dart';
import 'package:ecommece/view/widget/auth/customtextformfield.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
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
              title: 'Welcom Back',
            ),
            const SizedBox(height: 16),
            const CustomHeaderText(
              text:
                  'Sign In With Your Email and Password or Continue With Social Media',
            ),
            const SizedBox(height: 64),
            CustomTextFormField(
              hintText: 'Enter Your Username',
              labelText: 'UserName',
              suffixIcon: Icons.person_outline,
              fieldController: controller.userName,
            ),
            const SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'Enter Your Email',
              labelText: 'Email',
              suffixIcon: Icons.email_outlined,
              fieldController: controller.email,
            ),
            const SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'Enter Your Phone Number',
              labelText: 'Phone Number',
              suffixIcon: Icons.phone_outlined,
              fieldController: controller.phone,
            ),
            const SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'Enter Your Password',
              labelText: 'Password',
              suffixIcon: Icons.key_outlined,
              fieldController: controller.password,
            ),
            const SizedBox(height: 24),
            Custombuttonauth(
              buttonText: 'Sign Up',
              onPressed: () {
                controller.signUp();
              },
            ),
            const SizedBox(height: 24),
            CustomSignUpOrSignIn(
              textOne: "Have an account?",
              textTwo: 'Sign In',
              onTap: () {
                controller.goToLogin();
              },
            )
          ],
        ),
      ),
    );
  }
}
