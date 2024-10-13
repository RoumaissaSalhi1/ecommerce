import 'package:ecommece/core/constant/color.dart';
import 'package:flutter/material.dart';

class Custombuttonauth extends StatelessWidget {
  const Custombuttonauth({super.key, required this.buttonText});
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      child: Text(buttonText),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(ColorApp.primary),
      ),
    );
  }
}
