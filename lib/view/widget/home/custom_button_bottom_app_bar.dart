import 'package:ecommece/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonBottomAppBar extends StatelessWidget {
  const CustomButtonBottomAppBar({
    super.key,
    required this.text,
    required this.onPressed,
    required this.icon,
    required this.iconOutlined,
    required this.active,
  });

  final String text;
  final void Function() onPressed;
  final IconData icon;
  final IconData iconOutlined;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      child: Column(
        children: [
          Icon(
            active ? icon : iconOutlined,
            color: ColorApp.grey,
          ),
          Text(text)
        ],
      ),
    );
  }
}
