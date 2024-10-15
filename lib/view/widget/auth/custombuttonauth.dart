import 'package:ecommece/core/constant/color.dart';
import 'package:flutter/material.dart';

class Custombuttonauth extends StatelessWidget {
  const Custombuttonauth(
      {super.key, required this.buttonText, required this.onPressed});
  final String buttonText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(ColorApp.primary),
      ),
      onPressed: () {
        onPressed();
      },
      child: Text(buttonText),
    );
  }
}
