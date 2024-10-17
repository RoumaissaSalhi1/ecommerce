import 'package:ecommece/controller/auth/forget_password_controller.dart';
import 'package:ecommece/core/functions/valid_input.dart';
import 'package:ecommece/view/widget/auth/custombuttonauth.dart';
import 'package:ecommece/view/widget/auth/customheadertext.dart';
import 'package:ecommece/view/widget/auth/customheadertitle.dart';
import 'package:ecommece/view/widget/auth/customtextformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordController controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forget Password',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding:
            const EdgeInsets.only(top: 32, right: 24, left: 24, bottom: 24),
        child: Form(
          key: controller.formState,
          child: ListView(
            children: [
              const SizedBox(
                height: 24,
              ),
              const CustomHeaderTitle(
                title: 'Check Email',
              ),
              const SizedBox(height: 16),
              const CustomHeaderText(
                text:
                    'Please Enter Your Email Address To Receive A Verification Code',
              ),
              const SizedBox(height: 64),
              CustomTextFormField(
                validator: (val) {
                  return validInput(val!, 6, 20, 'email');
                },
                hintText: 'Enter Your Email',
                labelText: 'Email',
                suffixIcon: Icons.email_outlined,
                fieldController: controller.email,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 24),
              Custombuttonauth(
                buttonText: 'Check',
                onPressed: () {
                  controller.goToVerifyCode();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
