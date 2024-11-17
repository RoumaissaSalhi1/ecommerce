import 'package:ecommece/controller/my_favorite_controller.dart';
import 'package:ecommece/data/model/my_favorite_model.dart';
 import 'package:ecommece/view/widget/myfavorite/fav_item_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFavItemCard extends GetView<MyFavoriteController> {
  const CustomFavItemCard({
    super.key,
    required this.item,
  });
  final MyFavoriteModel item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // controller.goToProductDetails(item);
      },
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: LayoutBuilder(
          builder: (context, constraint) {
            double cardWidth = constraint.maxWidth;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FavItemImage(item: item, cardWidth: cardWidth),
                //  ItemInfo(item: item),
              ],
            );
          },
        ),
      ),
    );
  }
}
