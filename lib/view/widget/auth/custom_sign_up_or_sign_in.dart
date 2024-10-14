import 'package:ecommece/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomSignUpOrSignIn extends StatelessWidget {
  const CustomSignUpOrSignIn({
    super.key,
    required this.textOne,
    required this.textTwo,
    required this.onTap,
  });
  final String textOne;
  final String textTwo;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textOne),
        const SizedBox(width: 6),
        InkWell(
          onTap: () {
            onTap();
          },
          child: Text(
            textTwo,
            style: const TextStyle(
                color: ColorApp.primary, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
