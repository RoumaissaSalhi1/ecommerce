import 'package:ecommece/data/model/items_model.dart';
import 'package:flutter/material.dart';

class ItemPrice extends StatelessWidget {
  const ItemPrice({
    super.key,
    required this.item,
  });

  final ItemsModel item;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${item.itemPrice} \$',
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.grey.shade800,
          ),
    );
  }
}
