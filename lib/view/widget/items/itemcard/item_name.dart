import 'package:ecommece/data/model/items_model.dart';
import 'package:flutter/material.dart';

class ItemName extends StatelessWidget {
  const ItemName({
    super.key,
    required this.item,
  });

  final ItemsModel item;

  @override
  Widget build(BuildContext context) {
    return Text(
      item.itemName!,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800),
    );
  }
}
