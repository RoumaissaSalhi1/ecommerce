import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

 class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.suffixIcon,
    required this.fieldController,
    required this.validator,
    required this.textInputType,
    this.obsecureText,
    this.onTap,
  });

  final TextEditingController fieldController;

  final String hintText;
  final String labelText;
  final IconData suffixIcon;
  final TextInputType textInputType;
  String? Function(String?)? validator;
  final bool? obsecureText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: textInputType,
      controller: fieldController,
      // hide text in case password 
      obscureText: obsecureText == null ? false : obsecureText!,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: InkWell(
          child: Icon(suffixIcon, color: Theme.of(context).colorScheme.outline),
          onTap: onTap,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 30),
        label: Text(labelText),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
