import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.suffixIcon,
  });

  final String hintText;
  final String labelText;
  final IconData suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: Icon(
         suffixIcon,
          color: Theme.of(context).colorScheme.outline,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 30),
        label: Text(labelText),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
