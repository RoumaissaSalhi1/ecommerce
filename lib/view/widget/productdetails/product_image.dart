import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommece/controller/product_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductImage extends GetView<ProductDetailsControllerImp> {
  const ProductImage({
    super.key,
   
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Colors.white,
      child: Hero(
        tag: controller.itemsModel.itemId!,
        child: CachedNetworkImage(
          imageUrl: controller.itemsModel.itemImage!,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
