import 'package:ecommece/controller/auth/sign_up_controller.dart';
import 'package:ecommece/core/class/status_request.dart';
import 'package:ecommece/core/constant/imageasset.dart';
import 'package:ecommece/core/functions/valid_input.dart';
import 'package:ecommece/view/widget/auth/custom_sign_up_or_sign_in.dart';
import 'package:ecommece/view/widget/auth/custombuttonauth.dart';
import 'package:ecommece/view/widget/auth/customheadertext.dart';
import 'package:ecommece/view/widget/auth/customheadertitle.dart';
import 'package:ecommece/view/widget/auth/customtextformfield.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: GetBuilder<SignUpControllerImp>(
          builder: (controller) =>
              controller.statusRequest == StatusRequest.loading
                  ? Center(
                      child: Lottie.asset(Imageasset.loadingLottie),
                    )
                  : Container(
                      padding: const EdgeInsets.only(
                          top: 32, right: 24, left: 24, bottom: 24),
                      child: Form(
                        key: controller.formState,
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
                              validator: (val) {
                                return validInput(val!, 4, 20, 'username');
                              },
                              hintText: 'Enter Your Username',
                              labelText: 'UserName',
                              suffixIcon: Icons.person_outline,
                              fieldController: controller.userName,
                              textInputType: TextInputType.name,
                            ),
                            const SizedBox(height: 24),
                            CustomTextFormField(
                              validator: (val) {
                                return validInput(val!, 6, 100, 'email');
                              },
                              hintText: 'Enter Your Email',
                              labelText: 'Email',
                              suffixIcon: Icons.email_outlined,
                              fieldController: controller.email,
                              textInputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 24),
                            CustomTextFormField(
                              validator: (val) {
                                return validInput(val!, 10, 10, 'phone');
                              },
                              hintText: 'Enter Your Phone Number',
                              labelText: 'Phone Number',
                              suffixIcon: Icons.phone_outlined,
                              fieldController: controller.phone,
                              textInputType: TextInputType.phone,
                            ),
                            const SizedBox(height: 24),
                            CustomTextFormField(
                              validator: (val) {
                                return validInput(val!, 6, 20, 'password');
                              },
                              hintText: 'Enter Your Password',
                              labelText: 'Password',
                              suffixIcon: controller.isShowPassword
                            ? Icons.lock_outlined
                            : Icons.no_encryption_gmailerrorred_outlined,
                             obsecureText: controller.isShowPassword,
                              fieldController: controller.password,
                              textInputType: TextInputType.visiblePassword,
                               onTap: () {
                          controller.showPassword();
                        },
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
                    )),
    );
  }
}
