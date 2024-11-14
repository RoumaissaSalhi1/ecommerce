import 'package:ecommece/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonLang extends StatelessWidget {
  const CustomButtonLang(
      {super.key, required this.textButton, required this.onPressed});

  final String textButton;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(ColorApp.primary)),
        child: Text(textButton),
      ),
    );
  }
}
