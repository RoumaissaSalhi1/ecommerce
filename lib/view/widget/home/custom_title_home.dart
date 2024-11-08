import 'package:flutter/material.dart';

class CustomTitleHome extends StatelessWidget {
  const CustomTitleHome({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.deepOrange.shade900, fontSize: 20),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
