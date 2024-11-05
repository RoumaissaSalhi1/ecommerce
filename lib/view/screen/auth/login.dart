import 'package:ecommece/controller/auth/login_controller.dart';
import 'package:ecommece/core/class/handling_data_view.dart';
  import 'package:ecommece/core/functions/valid_input.dart';
import 'package:ecommece/view/widget/auth/custombuttonauth.dart';
import 'package:ecommece/view/widget/auth/customheadertext.dart';
import 'package:ecommece/view/widget/auth/customheadertitle.dart';
import 'package:ecommece/view/widget/auth/customtextformfield.dart';
import 'package:ecommece/view/widget/auth/custom_sign_up_or_sign_in.dart';
import 'package:ecommece/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: GetBuilder<LoginControllerImp>(builder: (controller) {
        return HandlingDataRequest(
          statusRequest: controller.statusRequest,
          widget: Container(
            padding:
                const EdgeInsets.only(top: 32, right: 24, left: 24, bottom: 24),
            child: Form(
              key: controller.formState,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 170,
                    child: LogoAuth(),
                  ),
                  const SizedBox(height: 24),
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
                      return validInput(val!, 5, 50, 'email');
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
                      return validInput(val!, 6, 20, 'password');
                    },
                    hintText: 'Enter Your Password',
                    labelText: 'Password',
                    suffixIcon: controller.isShowPassword
                        ? Icons.lock_outlined
                        : Icons.no_encryption_gmailerrorred_outlined,
                    fieldController: controller.password,
                    textInputType: TextInputType.visiblePassword,
                    obsecureText: controller.isShowPassword,
                    onTap: () {
                      controller.showPassword();
                    },
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      controller.goToForgetPassword();
                    },
                    child: const Text(
                      'Forgot Password?',
                      textAlign: TextAlign.end,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Custombuttonauth(
                    buttonText: 'Sign In',
                    onPressed: () {
                      controller.login();
                    },
                  ),
                  const SizedBox(height: 24),
                  CustomSignUpOrSignIn(
                    textOne: "Don't have an account?",
                    textTwo: 'Sign Up',
                    onTap: () {
                      controller.goToSignUp();
                    },
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
