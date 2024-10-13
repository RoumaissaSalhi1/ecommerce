import 'package:flutter/material.dart';

class CustomHeaderText extends StatelessWidget {
  const CustomHeaderText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: Colors.black54),
      ),
    );
  }
}
