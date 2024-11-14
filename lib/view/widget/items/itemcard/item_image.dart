import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommece/data/model/items_model.dart';
import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({
    super.key,
    required this.item,
    required this.cardWidth,
  });

  final ItemsModel item;
  final double cardWidth;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: item.itemId!,
      child: CachedNetworkImage(
        imageUrl: item.itemImage!,
        fit: BoxFit.cover,
        width: cardWidth,
        height: cardWidth,
      ),
    );
  }
}
