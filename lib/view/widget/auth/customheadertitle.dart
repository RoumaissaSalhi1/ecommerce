import 'package:flutter/material.dart';

class CustomHeaderTitle extends StatelessWidget {
  const CustomHeaderTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineMedium!
          .copyWith(color: Colors.black87, fontWeight: FontWeight.w600),
      textAlign: TextAlign.center,
    );
  }
}
