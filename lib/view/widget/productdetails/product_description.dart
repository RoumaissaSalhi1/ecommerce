import 'package:ecommece/controller/product_details_controller.dart';
import 'package:ecommece/core/functions/translateDatabase.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class ProductDescription extends GetView<ProductDetailsControllerImp> {
  const ProductDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.black),
        ),
        const SizedBox(height: 8),
        Text(
          translateDatabase(controller.itemsModel.itemDescriptionAr!,
              controller.itemsModel.itemDescription!),
        ),
      ],
    );
  }
}
