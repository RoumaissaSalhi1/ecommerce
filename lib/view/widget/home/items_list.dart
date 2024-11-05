
import 'package:ecommece/controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsList extends GetView<HomePageControllerImp> {
  const ItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.itemsData.length,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.only(right: 16),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            clipBehavior: Clip
                .antiAlias, // Ensures rounded corners for the image
            child: Image.network(
              height: 100,
              width: 150,
              fit: BoxFit.cover,
              controller.itemsData[index].itemImage!,
            ),
          ),
        ),
      ),
    );
  }
}
