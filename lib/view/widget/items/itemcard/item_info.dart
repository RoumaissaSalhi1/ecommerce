import 'package:ecommece/data/model/items_model.dart';
import 'package:ecommece/view/widget/items/itemcard/favorite_button.dart';
import 'package:ecommece/view/widget/items/itemcard/item_name.dart';
import 'package:ecommece/view/widget/items/itemcard/item_price.dart';
import 'package:ecommece/view/widget/items/itemcard/item_rating.dart';
import 'package:flutter/material.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    super.key,
    required this.item,
  });

  final ItemsModel item;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(8),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ItemName(item: item),
            const SizedBox(height: 4),
            const ItemRating(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ItemPrice(item: item), FavoriteButton(item: item)],
            )
          ],
        ),
      ),
    );
  }
}
