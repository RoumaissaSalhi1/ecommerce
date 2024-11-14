import 'package:ecommece/controller/items_controller.dart';
import 'package:ecommece/data/model/items_model.dart';
import 'package:ecommece/view/widget/items/itemcard/item_image.dart';
import 'package:ecommece/view/widget/items/itemcard/item_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomItemCard extends StatelessWidget {
  const CustomItemCard({
    super.key,
    required this.item,
  });
  final ItemsModel item;

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp itemsController = Get.find<ItemsControllerImp>();
    return InkWell(
      onTap: () {
        itemsController.goToProductDetails(item);
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
                ItemImage(item: item, cardWidth: cardWidth),
                ItemInfo(item: item),
              ],
            );
          },
        ),
      ),
    );
  }
}
