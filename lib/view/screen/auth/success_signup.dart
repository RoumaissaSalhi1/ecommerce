import 'package:ecommece/core/constant/color.dart';
import 'package:ecommece/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
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
              'Your account has been created',
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
                    buttonText: 'Go To Login', onPressed: () {}))
          ],
        ),
      ),
    );
  }
}
