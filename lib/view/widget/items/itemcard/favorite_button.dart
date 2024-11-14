import 'package:ecommece/controller/favorite_controller.dart';
import 'package:ecommece/core/constant/color.dart';
import 'package:ecommece/data/model/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    super.key,
    required this.item,
  });

  final ItemsModel item;

  @override
  Widget build(BuildContext context) {
    Get.find<FavoriteControllerImp>();
    return GetBuilder<FavoriteControllerImp>(builder: (favoriteController) {
      return InkWell(
        onTap: () {
          favoriteController.onPressedFavorite(item.itemId!);
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(
            favoriteController.isFavorite[item.itemId] == '1'
                ? Icons.favorite
                : Icons.favorite_outline,
            color: ColorApp.primary,
          ),
        ),
      );
    });
  }
}
