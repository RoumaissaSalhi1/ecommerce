import 'package:ecommece/controller/product_details_controller.dart';
import 'package:ecommece/core/functions/translateDatabase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductNameAndPrice extends GetView<ProductDetailsControllerImp> {
  const ProductNameAndPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            translateDatabase(controller.itemsModel.itemNameAr!,
                controller.itemsModel.itemName!),
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Text(
          '\$${controller.itemsModel.itemPrice!}',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
