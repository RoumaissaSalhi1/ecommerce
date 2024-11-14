import 'package:ecommece/controller/favorite_controller.dart';
import 'package:ecommece/data/model/items_model.dart';
import 'package:ecommece/view/widget/items/custom_item_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomItemsList extends StatelessWidget {
  const CustomItemsList({
    super.key,
    required this.items,
  });
  final List<ItemsModel> items;

  @override
  Widget build(BuildContext context) {
    FavoriteControllerImp favoriteController = Get.put(FavoriteControllerImp());

    return GridView.builder(
      shrinkWrap: true, // take up only as much space as its content requires
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.67),
      itemBuilder: (context, index) {
        favoriteController.initSetFavorite(
            items[index].itemId!, items[index].favorite!);
        return CustomItemCard(
          item: items[index],
        );
      },
    );
  }
}
