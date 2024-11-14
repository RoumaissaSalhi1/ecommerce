import 'package:flutter/material.dart';

class ItemRating extends StatelessWidget {
  const ItemRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < 4
              ? Icons.star
              : Icons.star_border, // Full or empty star
          color: Colors.amber.shade600,
          size: 20,
        );
      }),
    );
  }
}

