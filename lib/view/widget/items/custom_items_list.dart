import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommece/controller/items_controller.dart';
import 'package:ecommece/core/constant/color.dart';
import 'package:ecommece/data/model/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomItemsList extends GetView<ItemsControllerImp> {
  const CustomItemsList({
    super.key,
    required this.items,
  });
  final List<ItemsModel> items;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, // take up only as much space as its content requires
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.67),
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          controller.goToProductDetails(index);
        },
        child: Card(
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          //color: Colors.white,
          child: LayoutBuilder(builder: (context, constraint) {
            double cardWidth = constraint.maxWidth;
            return Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: items[index].itemId!,
                  child: CachedNetworkImage(
                    imageUrl: items[index].itemImage!,
                    fit: BoxFit.cover,
                    width: cardWidth,
                    height: cardWidth,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[index].itemName!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade800),
                        ),
                        const SizedBox(height: 4),
                        Row(
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
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${items[index].itemPrice} \$',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade800,
                                  ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: ColorApp.primary,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
